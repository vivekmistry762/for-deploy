#!/usr/bin/env bash

echo "📦 Installing dependencies..."
composer install --no-dev --optimize-autoloader

echo "🔑 Generating app key..."
php artisan key:generate

echo "⚙️ Running migrations..."
php artisan migrate --force

echo "🧹 Caching configs..."
php artisan config:cache
php artisan route:cache
php artisan view:cache

echo "✅ Laravel build completed!"
