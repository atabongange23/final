<?php
namespace App\Services;

use App\Models\Otp;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Log;

class OtpService
{
    public function __construct(protected TwilioService $twilio){}

    public function generate(string $phoneNumber, string $type = 'login', int $userId): Otp
    {
        $code = rand(100000, 999999);

        $otp = Otp::create([
            'user_id' => $userId,
            'phone_number' => $phoneNumber,
            'code' => $code,
            'type' => $type,
            'expires_at' => Carbon::now()->addMinutes(5),
        ]);

        try {
             $this->twilio->send($phoneNumber, "Your OTP code is: $code");
        } catch (\Exception $e) {
            Log::error($e->getMessage());
        }

        return $otp;
    }

    public function verify(string $phoneNumber, string $inputCode, string $type = 'login'): bool
    {
        $otp = Otp::where('phone_number', $phoneNumber)
            ->where('type', $type)
            ->whereNull('verified_at')
            ->where('expires_at', '>', now())
            ->latest()
            ->first();

        if (!$otp || $otp->code !== $inputCode) {
            if ($otp) {
                $otp->increment('attempts');
            }
            return false;
        }

        $otp->update(['verified_at' => now()]);
        return true;
    }


    public function existingCode(string $phoneNumber) {
        // Generate OTP only if one isn't active
        $existing = Otp::where('phone_number', $phoneNumber)
            ->where('expires_at', '>', now())
            ->whereNull('verified_at')
            ->latest()
            ->first();

        if(!$existing) {
            return false;
        }

        return true;
    }
}
