<x-guest-layout>

    <div class="mb-4 text-sm text-gray-600">
        <h2 class="text-lg font-semibold mb-2">{{ __('Enter the One-Time Password (OTP)') }}</h2>
        <p> {{ __(' Please enter the 6-digit code sent to your phone number. This code helps us verify your identity and keep your account secure..') }}</p>
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('otp.validate') }}">
        @csrf
        
        <div class="flex items-between w-full">
            @for($i = 0 ; $i < 6; $i++)
                <div class="px-2">
                    <x-input-label for="otp-{{ $i }}" class="sr-only" :value="__('OTP')" />
                    <x-text-input id="otp-{{ $i }}" class="otpfield block mt-1 w-12 h-12 text-center" type="text" name="otp[]" :value="old('otp')" maxlength="1" onkeydown="handleOtpKey(event, {{ $i }})" oninput="handleOtpInput(event, {{ $i }})"  required  />
                </div>
            @endfor
            <x-input-error :messages="$errors->get('otp')" class="mt-2" />
        </div>
        

      
        <div class="flex items-center justify-end mt-4">
            <x-primary-button class="ms-3">
                {{ __('Verify') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout>


<script>
    function handleOtpInput(e, index) {
        const input = e.target;
        if (input.value.length > 0) {
            const nextInput = document.getElementById(`otp-${index + 1}`);
            if (nextInput) nextInput.focus();
        }
    }

    function handleOtpKey(e, index) {
        const input = e.target;
        if (e.key === "Backspace" && input.value === "") {
            const prevInput = document.getElementById(`otp-${index - 1}`);
            if (prevInput) {
                prevInput.focus();
                prevInput.value = '';
                e.preventDefault();
            }
        }
    }
</script>