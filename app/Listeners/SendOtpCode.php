<?php

namespace App\Listeners;

use App\Events\UserLoggedIn;
use App\Services\OtpService;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendOtpCode
{
    /**
     * Create the event listener.
     */
    public function __construct(protected OtpService $otpService)
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(UserLoggedIn $event): void
    {
        // Check existing code before sending another
        $existing = $this->otpService->existingCode($event->user->phone_number);

        if (!$existing) {
            $this->otpService->generate($event->user->phone_number, 'login', $event->user->id);
        }
    }
}
