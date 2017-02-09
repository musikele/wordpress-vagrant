#!/usr/bin/env bash

apt-get update

sudo apt-get install -y language-pack-it

apt-get install -y apache2 php-soap

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password password'
sudo apt-get -y install mysql-server

if ! [ -L /var/www ]; then 
	rm -rf /var/www
	ln -fs /vagrant /var/www
fi

sudo apt install -y wordpress

cp /vagrant/wordpress.conf /etc/apache2/sites-available/
cp /vagrant/config-localhost.php /etc/wordpress/
cat /vagrant/wordpress.sql | sudo mysql --defaults-extra-file=/etc/mysql/debian.cnf

sudo a2ensite wordpress
sudo systemctl restart apache2.service

sudo chown -R www-data:www-data /usr/share/wordpress

