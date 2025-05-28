<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class OtpNotification extends Notification
{
    use Queueable;

    public $otp;

    public function __construct($otp)
    {
        $this->otp = $otp;
    }

    public function via($notifiable)
    {
        return ['mail']; // Change to 'nexmo' for SMS or add both
    }

    public function toMail($notifiable)
    {
        return (new MailMessage)
            ->subject('Your OTP Code')
            ->line('Your OTP code is: ' . $this->otp)
            ->line('This code will expire in 15 minutes.');
    }

    /* Uncomment for SMS (requires Nexmo/Laravel Notification setup)
    public function toNexmo($notifiable)
    {
        return (new NexmoMessage)
            ->content('Your OTP code is: ' . $this->otp);
    }
    */
}