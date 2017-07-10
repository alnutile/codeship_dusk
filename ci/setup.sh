#!/bin/sh

set -e

phpenv local 5.6
composer install --no-interaction


php artisan serve --quiet