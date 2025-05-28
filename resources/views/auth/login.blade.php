<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <!-- Step 1: Email/Password Form (initially visible) -->
    <form id="loginForm" method="POST" action="{{ route('login') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />
            <x-text-input id="password" class="block mt-1 w-full"
                type="password"
                name="password"
                required autocomplete="current-password" />
            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- CAPTCHA -->
        <div class="captcha-group mt-4">
            <label for="captcha">CAPTCHA Verification</label>
            <div class="captcha-container">
                {!! captcha_img() !!}
                <button type="button" class="btn-refresh" onclick="refreshCaptcha()">
                    <i class="fas fa-sync-alt"></i>
                </button>
            </div>
            <input id="captcha" type="text" class="form-control" placeholder="Enter CAPTCHA" name="captcha" required>
        </div>

        <div class="flex items-center justify-end mt-4">
            <button type="button" onclick="submitLogin()">
                Verify & Continue
            </button>
        </div>
    </form>

    <!-- Step 2: OTP Verification Form (initially hidden) -->
    <form id="otpForm" method="POST" action="{{ route('verify-otp') }}" class="hidden mt-6">
        @csrf
        <input type="hidden" id="login_email" name="email">
        
        <div>
            <x-input-label for="otp" :value="__('SMS OTP')" />
            <x-text-input id="otp" class="block mt-1 w-full" type="text" name="otp" required />
            <div class="text-sm text-gray-600 mt-2">
                We've sent a 6-digit code to your mobile number.
            </div>
            <x-input-error :messages="$errors->get('otp')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <x-primary-button>
                {{ __('Verify OTP') }}
            </x-primary-button>
        </div>
    </form>

    <script>
        function submitLogin() {
            const form = document.getElementById('loginForm');
            const submitBtn = form.querySelector('button[type="button"]');
            
            submitBtn.disabled = true;
            submitBtn.innerHTML = 'Verifying...';

            fetch(form.action, {
                method: 'POST',
                body: new FormData(form),
                headers: {
                    'Accept': 'application/json',
                    'X-Requested-With': 'XMLHttpRequest',
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content
                }
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // Hide login form, show OTP form
                    document.getElementById('loginForm').classList.add('hidden');
                    document.getElementById('otpForm').classList.remove('hidden');
                    document.getElementById('login_email').value = document.getElementById('email').value;
                } else {
                    alert(data.message || 'Login failed');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert(error.message);
            })
            .finally(() => {
                submitBtn.disabled = false;
                submitBtn.innerHTML = 'Verify & Continue';
            });
        }
    </script>
</x-guest-layout>