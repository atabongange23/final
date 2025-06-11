<?php

namespace App\Http\Controllers\Auth;

use App\Models\Otp;
use App\Services\OtpService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class OtpController extends Controller
{
    public function __construct(protected OtpService $otpService){}

    public function create()
    {
        return view('auth.otp');
    }

    /**
     * Resend OTP
     */
    public function sendOtp()
    {
        $user = Auth::user();

        if (!$user->phone_number) {
            return back()->with('status', 'No phone number associated with your account.');
        }
        
        // Generate OTP only if one isn't active
        if($this->otpService->existingCode($user->phone_number)) {
            return back()->with('status', 'Please wait for 5 minutes before resending the code.');
        }
        
        $this->otpService->generate($user->phone_number, 'login', $user->id);

        return back()->with('status', 'OTP has been sent to your phone.');
    }

     /**
     * Verify the OTP entered by user
     */
    public function verifyOtp(Request $request)
    {
        $request->validate([
             'otp' => 'required|array|size:6',
             'otp.*' => 'required|digits:1',
        ]);

        $inputCode = implode('', $request->input('otp'));

        $user = Auth::user();

        $isValid = $this->otpService->verify($user->phone_number, $inputCode, 'login');

        if (!$isValid) {
            return back()->withErrors(['otp' => 'Invalid or expired OTP.']);
        }

        // Mark user as OTP verified
        $user->update(['otp_verified' => true]);

        return redirect()->intended('/dashboard')->with('success', 'OTP verified successfully.');
    }
}
