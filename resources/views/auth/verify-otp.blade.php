<x-guest-layout>
    <div class="mb-4 text-sm text-gray-600">
        We've sent a 6-digit verification code to your mobile number.
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('verify-otp') }}">
        @csrf

        <!-- OTP -->
        <div>
            <x-input-label for="otp" :value="__('OTP Code')" />
            <x-text-input id="otp" class="block mt-1 w-full" 
                          type="text" 
                          name="otp" 
                          required 
                          autofocus 
                          maxlength="6" />
            <x-input-error :messages="$errors->get('otp')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <x-primary-button>
                {{ __('Verify OTP') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout>