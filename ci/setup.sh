#!/bin/sh

set -e

phpenv local 5.6
composer install --no-interaction

./vendor/laravel/dusk/bin/chromedriver-linux &

cp .env.testing .env

php artisan serve > /dev/null 2>&1 &
sleep 3
