#!/bin/bash
cd /app && \
composer create-project drupal-composer/drupal-project:8.x-dev /app --stability dev --no-interaction && \
mkdir -p /app/config/sync && \
chown -R www-data:www-data /app/web && \
composer update drupal/core --with-dependencies && \
curl https://drupalconsole.com/installer -L -o drupal.phar && \
mv drupal.phar /usr/local/bin/drupal && \
chmod +x /usr/local/bin/drupal
