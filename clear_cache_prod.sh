#!/bin/sh
echo "Borrando la cache antigua"
php bin/console cache:clear --env=prod

echo "Generando la cache nueva"
php bin/console cache:warmup --env=prod

echo "Done!"
