# AuthX - 2FA Authenticatoin System

This project was made using the Laravel Framework.

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Packages Used

1) mews/captcha (Captcha for Laravel 5+ )
2) laravel/breeze (Laravel Authentication Starter Kit)
3) twilio/sdk (To help with the OTP SMS messages)

## Other resources

1) Mailhog: This is a tool for testing email localy. [Dowload mailhog here](https://github.com/mailhog/MailHog/releases)

## Project Setup Guide

This guide helps you set up this project

---

## ✅ Prerequisites

Make sure the following are installed:

- **PHP >= 8.2**
- **Composer**
- **Node.js & NPM**
- **MySQL** or another supported database
- For simplicity download and install [Download here](https://herd.laravel.com/)

## 🔧 1. Install PHP Dependencies with Composer

```bash
composer install
```

---

## 🌐 2. Install Frontend Dependencies with NPM

```bash
npm install
```
---

## 🔨 4. Build Frontend Assets

```bash
npm run build
```

---

## 🔐 5. Configure Environment

Copy the example `.env` file:

```bash
cp .env.example .env
```

Then update the `.env` file to match your environment. The listed below are important for the otp:

```env
TWILIO_SID=twilio_sid_here
TWILIO_AUTH_TOKEN=twilio_auth_token_here
TWILIO_FROM=twilio_from_number_here
```

---

## 🔑 6. Generate Application Key

```bash
php artisan key:generate
```

---

## 🗄️ 7. Run Database Migrations

Make sure your database is created, then run:

```bash
php artisan migrate
```

---
