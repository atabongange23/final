<?php

namespace App\Services;

class OtpService
{
    public function generateAndSendOtp($phoneNumber)
    {
        // Generate a random OTP (e.g., 6 digits)
        $otp = rand(100000, 999999);
        
        
        // Here you would implement the actual SMS sending logic
        // This is just a placeholder - you'd use an SMS gateway API
        // $this->sendSms($phoneNumber, "Your OTP is: $otp");
        
        // Store the OTP in cache with expiration (e.g., 5 minutes)
        cache()->put("otp_$phoneNumber", $otp, now()->addMinutes(5));
        
        return $otp;
    }

    public function verifyOtp($phoneNumber, $userEnteredOtp)
    {
        $storedOtp = cache()->get("otp_$phoneNumber");
        
        return $storedOtp && $storedOtp == $userEnteredOtp;
    }
}