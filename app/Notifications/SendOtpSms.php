<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\VonageMessage; // Changed from NexmoMessage
use Illuminate\Notifications\Notification;

class SendOtpSms extends Notification implements ShouldQueue
{
    use Queueable;

    public $otp;

    public function __construct($otp)
    {
        $this->otp = $otp;
    }

    public function via($notifiable)
    {
        return ['vonage']; // Changed from 'nexmo'
    }

    public function toVonage($notifiable) // Changed from toNexmo()
    {
        if (empty($notifiable->phone)) {
            throw new \Exception("No phone number set for user");
        }

        return (new VonageMessage)
            ->content("Your OTP code is: {$this->otp}");
    }
}