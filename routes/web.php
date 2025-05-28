<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\{
    LoginController,
    RegisteredUserController,
    VerifyEmailController
};
use App\Http\Controllers\ProfileController;
use Illuminate\Http\Request;

// Public Routes
Route::middleware('guest')->group(function () {
    // Main Page
    Route::get('/', function () {
        return view('welcome');

});
//   Route::get('/verify', LoginController::class, 'verifyOtp')->name('verify-otp');
    // Login Routes
    Route::controller(LoginController::class)->group(function () {
        Route::get('/login', 'showLoginForm')->name('login');
        Route::post('login', 'login')->name('login');
        Route::get('/login/verify', 'showVerifyOtpForm')->name('verify-otp');
        Route::post('/verify', 'verifyOtp')->name('verify-otp');
    });

    // Registration Routes
    Route::controller(RegisteredUserController::class)->group(function () {
        Route::get('register', 'showRegistrationForm')->name('register');
        Route::post('register', 'register')->name('register.post');
    });
});

// CAPTCHA Route
Route::get('/refresh-captcha', function () {
    return response()->json(['captcha' => captcha_img()]);
})->name('refresh-captcha');

// Email Verification
Route::middleware(['auth', 'signed'])->group(function () {
    Route::get('/email/verify/{id}/{hash}', VerifyEmailController::class)
        ->name('verification.verify');
});

// Authenticated Routes
Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
    
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');

    Route::post('/debug-login', function(Request $request) {
    return response()->json([
        'received' => $request->all(),
        'headers' => $request->headers->all()
    ]);
});
});

require __DIR__ . '/auth.php';