#/bin/bash

if [ -z "$(ls -A /var/www/terror)" ]; then
   git clone git@github.com:Arinez/terror-docker.git /var/www/terror
   cd /var/www/terror
   composer update
   chown -R $USER:www-data storage
   chown -R $USER:www-data bootstrap/cache
   chmod -R 775 storage
   chmod -R 775 bootstrap/cache
   cp .env.example .env
   php artisan key:generate
else
   echo "Repository already exists"
fi