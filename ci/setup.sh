#!/bin/sh

set -e

phpenv local 5.6
COMPOSER_HOME=${HOME}/cache/composer
composer install --prefer-dist  --no-interaction

./vendor/laravel/dusk/bin/chromedriver-linux &

cp .env.codeship .env

php artisan serve > /dev/null 2>&1 &
sleep 3
