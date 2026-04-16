#!/bin/bash

# Create necessary directories
mkdir -p bootstrap/cache storage/framework/cache/data storage/framework/views storage/logs storage/app

# Set permissions
chmod -R 777 bootstrap/cache storage/framework storage/logs storage/app

# Set environment variables
export APP_ENV=production
export CACHE_DRIVER=array
export APP_ID=ustam-app
export APP_KEY=base64:gMxFHKGygB1jW74kQ517Rvw4j4fjpZBsjoI/HaYdd/8=

# Run migrations
php artisan migrate --force

# Run seeders
php artisan db:seed --force

# Create installation marker files
echo '{"application_installation": "Completed"}' > storage/app/installation.json
echo '{"application_migration": "true"}' > storage/app/.migration

# Start PHP server
php -S 0.0.0.0:${PORT:-8000} -t public
