<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Notifications\SendOtpSms;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class LoginController extends Controller
{
    /**
     * Show the login form.
     */
    public function showLoginForm()
    {
        return view('auth.login');
    }

    /**
     * Handle login request (AJAX/API).
     */
    public function login(Request $request)
    {
        // Rate limiting (3 attempts per IP)
        if (RateLimiter::tooManyAttempts('login:' . $request->ip(), 3)) {
            return response()->json([
                'success' => false,
                'message' => 'Too many login attempts. Please try again later.'
            ], 429); // HTTP 429 = Too Many Requests
        }

        // Validate request (email, password, captcha)
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string',
            'captcha' => 'required|captcha'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors()
            ], 422); // HTTP 422 = Unprocessable Entity
        }

        try {
            $credentials = $request->only('email', 'password');

            // Check credentials
            if (!Auth::validate($credentials)) {
                RateLimiter::hit('login:' . $request->ip());
                throw ValidationException::withMessages([
                    'email' => 'Invalid credentials.',
                ]);
            }

            // Generate OTP and store in session
            $user = User::where('email', $credentials['email'])->firstOrFail();
            $otp = rand(100000, 999999);

            session([
                'otp_verification' => [
                    'otp' => $otp,
                    'user_id' => $user->id,
                    'remember' => $request->has('remember'),
                    'expires_at' => now()->addMinutes(5)
                ]
            ]);

            // Send OTP via SMS
            $user->notify(new SendOtpSms($otp));

            return response()->json([
                'success' => true,
                'redirect' => route('verify-otp') // Redirect to OTP verification
            ]);

        } catch (\Exception $e) {
            Log::error('Login failed', ['error' => $e]);
            return response()->json([
                'success' => false,
                'message' => 'Login failed. Please try again.'
            ], 500); // HTTP 500 = Internal Server Error
        }
    }

    /**
     * Handle OTP verification after login.
     */
    public function verifyOtp(Request $request)
    {
        $request->validate([
            'otp' => 'required|digits:6'
        ]);

        $verificationData = session('otp_verification');

        if (
            !$verificationData ||
            now()->gt($verificationData['expires_at'])
        ) {
            return redirect()->route('login')->withErrors([
                'otp' => 'OTP expired. Please login again.'
            ]);
        }

        if ($request->otp != $verificationData['otp']) {
            return back()->withErrors(['otp' => 'Invalid OTP']);
        }

        // Login the user
        Auth::loginUsingId($verificationData['user_id'], $verificationData['remember']);

        // Clear OTP session
        session()->forget('otp_verification');

        return redirect()->intended('/dashboard');
    }
}
