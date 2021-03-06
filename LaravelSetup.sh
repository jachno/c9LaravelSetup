rm README.md php.ini hello-world.php
composer self-update
composer create-project laravel/laravel ./laravel --prefer-dist
shopt -s dotglob
mv laravel/* ./
rm -rf laravel
sudo sed -i "s|DocumentRoot /home/ubuntu/workspace|DocumentRoot /home/ubuntu/workspace/public|g" /etc/apache2/sites-enabled/001-cloud9.conf   
composer update
mysql-ctl start
sudo sed -i "s|DB_HOST=127.0.0.1|DB_HOST=localhost|g" .env
sudo sed -i "s|DB_DATABASE=homestead|DB_DATABASE=c9|g" .env
sudo sed -i "s|DB_USERNAME=homestead|DB_USERNAME="${C9_USER:0:16}"|g" .env
sudo sed -i "s|DB_HOST=127.0.0.1|DB_HOST=localhost|g" .env
rm LaravelSetup.sh