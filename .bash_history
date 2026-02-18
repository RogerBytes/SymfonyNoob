chown -R $UID:$GID /var/www
composer install
git config --global --add safe.directory /var/www
exit
symfony
exit
apk add --no-cache bash
chown -R $UID:$GID /var/www
composer install
git config --global --add safe.directory /var/www
apk add --no-cache bash
curl -sS https://get.symfony.com/cli/installer | bash
exit
git config --global --add safe.directory /var/www
apk update
sudo apk add --no-cache bash
apk add --no-cache bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
apk add symfony-cli
symfony
exit
symfony
symfony check:requirements
php --ini
echo "short_open_tag = Off" > /usr/local/etc/php/conf.d/custom.ini
exit
cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
symfony check:requirements
symfony make:controller HomeController
php bin/console make:controller HomeController
symfony -m
clear
exit
php bin/console make:controller RecipeController
php bin/console debug:router
exit
composer install
exit
cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
git config --global --add safe.directory /var/www
apk add --no-cache bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
apk add symfony-cli
exit
composer install
symfony check:requirements
exit
clear
exit
exit
~~~~~exit
exit
exit
php bin/console d:r
php bin/console debug:rooter
php bin/console debug:router
composer require symfony/webpack-encore-bundle
npm install
exit
apk add nodejs npm -y
apk add nodejs npm
node -v && npm -v
exit
composer require symfony/webpack-encore-bundle
npm install
npm install bootstrap --save-dev
exit
npm run dev
npm run dev
clear
npm run dev
npm install @symfony/stimulus-bridge --save-dev
clear
exit$
exit
npm install @symfony/stimulus-bridge --save-dev
clear
npm run dev
npm run dev
clear
npm run dev
npm install sass-loader@^16.0.1 sass --save-dev
npm run dev
composer remove symfony/ux-turbo symfony/asset-mapper symfony/stimulus-bundle
composer require symfony/webpack-encore-bundle symfony/ux-turbo symfony/stimulus-bundle
npm install
npm install
npm run dev
exit
exit
npm run dev
npm install @popperjs/core --save-dev
npm run dev
exit
exit
exit
exit
git config --global --add safe.directory /var/www
apk add --no-cache bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
apk add symfony-cli
apk add nodejs npm
exit
composer install
symfony check:requirements
exit
composer remove symfony/ux-turbo symfony/asset-mapper symfony/stimulus-bundle
composer require symfony/webpack-encore-bundle symfony/ux-turbo symfony/stimulus-bundle
npm install
npm audit fix
npm install bootstrap --save-dev
npm install @symfony/stimulus-bridge --save-dev
npm install @popperjs/core --save-dev
npm install sass-loader@^16.0.1 sass --save-dev
npm run dev
exit
cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
git config --global --add safe.directory /var/www
apk add --no-cache bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
apk add symfony-cli
apk add nodejs npm
exit
composer install
symfony check:requirements
composer remove symfony/ux-turbo symfony/asset-mapper symfony/stimulus-bundle
npm install --force
composer require symfony/webpack-encore-bundle symfony/ux-turbo symfony/stimulus-bundle
npm install
npm install --force
npm install bootstrap --save-dev
npm install @symfony/stimulus-bridge --save-dev
npm install @popperjs/core --save-dev
npm install sass-loader@^16.0.1 sass --save-dev
npm run dev
npm run build
exit
cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
git config --global --add safe.directory /var/www
apk add --no-cache bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
apk add symfony-cli
apk add nodejs npm
exit
composer install
symfony check:requirements
composer remove symfony/ux-turbo symfony/asset-mapper symfony/stimulus-bundle
composer require symfony/webpack-encore-bundle symfony/ux-turbo symfony/stimulus-bundle
npm install
npm install --force
composer install
npm install bootstrap --save-dev
npm install @symfony/stimulus-bridge --save-dev
npm run dev
npm run build
exit
cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
git config --global --add safe.directory /var/www
apk add --no-cache bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
apk add symfony-cli
apk add nodejs npm
exit
composer install
composer remove symfony/ux-turbo symfony/asset-mapper symfony/stimulus-bundle
composer require symfony/webpack-encore-bundle symfony/ux-turbo symfony/stimulus-bundle
npm install
npm install bootstrap --save-dev
npm install @symfony/stimulus-bridge --save-dev
npm install @popperjs/core --save-dev
npm install sass-loader@^16.0.1 sass --save-dev
npm run dev
npm run build
exit
exit
npm install bootstrap-icons
npm run dev
npm run build
npm run dev
exit
composer require symfony/twig-bundle
composer require symfony/asset
npm install
exit
php bin/console doctrine:database:create
exit
php bin/console doctrine:database:create
php bin/console make:user
symfony console make:security:form-login
php bin/console make:security:form-login
npm install
npm install
exit
cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
git config --global --add safe.directory /var/www
apk add --no-cache bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
apk add symfony-cli
apk add nodejs npm
exit
composer install
symfony check:requirements
exit
composer remove symfony/ux-turbo symfony/asset-mapper symfony/stimulus-bundle
composer require symfony/webpack-encore-bundle symfony/ux-turbo symfony/stimulus-bundle
npm install
npm install bootstrap --save-dev
npm install bootstrap-icons
npm install @symfony/stimulus-bridge --save-dev
npm install @popperjs/core --save-dev
npm install sass-loader@^16.0.1 sass --save-dev
npm run dev
npm run build
ext
exit
clear
clear
composer install
yarn install
yarn encore dev
npm install
php bin/console doctrine:database:create
php bin/console doctrine:database:create
php bin/console doctrine:database:create
php bin/console doctrine:database:create
php bin/console doctrine:database:create
php bin/console doctrine:database:create
USER_ID=$(id -u)
GROUP_ID=$(id -g)
cat <<EOF > .env.local
DB_USER="root"
DB_PASSWORD="root"
DB_NAME="blog"
SERVER_VERSION="16"
USER_ID="${USER_ID}"
GROUP_ID="${GROUP_ID}"
DATABASE_URL="postgresql://\${DB_USER}:\${DB_PASSWORD}@database:5432/\${DB_NAME}?serverVersion=\${SERVER_VERSION}&charset=utf8"
EOF

php bin/console doctrine:database:create
php bin/console app:create-user admin@site.test "admin123" "ROLE_ADMIN,ROLE_USER"
php bin/console app:create-user admin@site.test "admin123" "ROLE_ADMIN,ROLE_USER"
clear
php bin/console app:create-user admin@site.test "admin123" "ROLE_ADMIN,ROLE_USER"
php bin/console doctrine:database:create
php bin/console doctrine:migrations:migrate
php bin/console app:create-user admin@site.test "admin123" "ROLE_ADMIN,ROLE_USER"
php bin/console doctrine:database:drop --force
php bin/console doctrine:database:create
php bin/console make:migration
php bin/console doctrine:migrations:migrate
exit
exit
clear
exit
php bin/console make:migration
php bin/console d:m:m
php bin/console doctrine:migrations:status
php bin/console d:m:s
php bin/console doctrine:migrations:status
php bin/console d:m:s
php bin/console doctrine:migrations:status
php bin/console d:m:m
php bin/console d:m:v 20260206144250 --add
clear
php bin/console doctrine:migrations:version 20260206144250 --add
php bin/console d:m:m
php bin/console doctrine:migrations:version 20260206144250 --add
php bin/console doctrine:migrations:version Version20260206144250 --add
php bin/console doctrine:migrations:version 20260206144250 --add
php bin/console cache:clear
php bin/console doctrine:migrations:version 20260206144250 --add
php bin/console d:m:m
php bin/console doctrine:migrations:status
php bin/console d:m:m
php bin/console make:entity Recipe
php bon/console m:m
php bin/console m:m
php bin/console m:migration
php bin/console d:m:m
php bin/console make:entity Recipe
php bin/console m:migration
php bin/console d:m:m
php bin/console make:entity Recipe
php bin/console make:entity Recipe
php bin/console m:migration
php bin/console d:m:m
php bin/console m:migration
php bin/console d:m:m
exit
composer install
exit
cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
git config --global --add safe.directory /var/www
apk add --no-cache bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
apk add symfony-cli
apk add nodejs npm
exit
composer install
symfony check:requirements
exit
composer remove symfony/ux-turbo symfony/asset-mapper symfony/stimulus-bundle
composer require symfony/webpack-encore-bundle symfony/ux-turbo symfony/stimulus-bundle
npm install
npm install
npm install bootstrap --save-dev
npm install bootstrap-icons
npm install @symfony/stimulus-bridge --save-dev
npm install @popperjs/core --save-dev
npm install sass-loader@^16.0.1 sass --save-dev
npm run dev
php bin/console doctrine:database:create
exit
php bin/console doctrine:database:create
php bin/console doctrine:migrations:migrate
php bin/console make:migration
php bin/console doctrine:migrations:migrate
exit
