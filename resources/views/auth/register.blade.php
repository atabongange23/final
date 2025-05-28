<x-guest-layout>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <!-- Name -->
        <div>
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />

            <x-text-input id="password" class="block mt-1 w-full"
                type="password"
                name="password"
                required autocomplete="new-password"
                oninput="checkPasswordStrength(this.value)" />

            <div id="password-strength" class="h-1.5 mt-2 rounded hidden">
                <div id="password-strength-bar" class="h-full rounded"></div>
            </div>
            <div id="password-strength-text" class="text-xs mt-1"></div>

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Confirm Password')" />

            <x-text-input id="password_confirmation" class="block mt-1 w-full"
                type="password"
                name="password_confirmation" required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>
        <div class="input-group">
            <i class="fas fa-phone"></i>
            <input type="tel" id="phone" name="phone" placeholder="+2376XXXXXXX" required />
            <label for="phone">Phone Number</label>
        </div>

        <div class="flex items-center justify-end mt-4">
            <a class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800" href="{{ route('login') }}">
                {{ __('Already registered?') }}
            </a>

            <x-primary-button class="ms-4">
                {{ __('Register') }}
            </x-primary-button>
        </div>
        <script>
            function checkPasswordStrength(password) {
                const strengthBar = document.getElementById('password-strength-bar');
                const strengthContainer = document.getElementById('password-strength');
                const strengthText = document.getElementById('password-strength-text');

                // Reset
                strengthContainer.classList.remove('hidden');
                strengthBar.style.width = '0%';
                strengthBar.className = 'h-full rounded';

                if (!password) {
                    strengthContainer.classList.add('hidden');
                    strengthText.textContent = '';
                    return;
                }

                // Calculate strength
                let strength = 0;
                let tips = [];

                // Check length
                if (password.length >= 8) strength += 1;
                if (password.length >= 12) strength += 1;

                // Check for mixed case
                if (password.match(/[a-z]/) && password.match(/[A-Z]/)) strength += 1;

                // Check for numbers
                if (password.match(/\d/)) strength += 1;

                // Check for special chars
                if (password.match(/[^a-zA-Z\d]/)) strength += 1;

                // Update UI
                let width = (strength / 5) * 100;
                strengthBar.style.width = `${width}%`;

                // Set color and text based on strength
                if (strength <= 1) {
                    strengthBar.classList.add('bg-red-500');
                    strengthText.textContent = 'Weak';
                    strengthText.className = 'text-xs mt-1 text-red-500';
                } else if (strength <= 3) {
                    strengthBar.classList.add('bg-yellow-500');
                    strengthText.textContent = 'Medium';
                    strengthText.className = 'text-xs mt-1 text-yellow-500';
                } else {
                    strengthBar.classList.add('bg-green-500');
                    strengthText.textContent = 'Strong';
                    strengthText.className = 'text-xs mt-1 text-green-500';
                }
            }
        </script>
    </form>
</x-guest-layout>