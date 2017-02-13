sex +x

## installo software 
apt-get update
apt-get install -y language-pack-it
apt-get install -y apache2 libapache2-mod-php php-mysql php-soap php-curl php-xml sendmail

## setto la password di default di mysql; user: root - pwd: password 
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password password'
sudo apt-get -y install mysql-server

sudo adduser ubuntu www-data
sudo cp /vagrant/envvars /etc/apache2/envvars

# script che inizializza il db 
cat /vagrant/wordpress.sql | sudo mysql --defaults-extra-file=/etc/mysql/debian.cnf

if ! [ -L /var/www ]; then
	rm -rf /var/www/html/wp-content
	sudo ln -fs /vagrant/wp-content /var/www/html/wp-content
fi

## scarico wordpress e lo unzippo 
cd /tmp
wget http://wordpress.org/latest.zip
apt-get install -y unzip
unzip -oq latest.zip -d /var/www/html/

# creo cartella wp-content/uploads
mkdir -p /var/www/html/wordpress/wp-content/uploads

# copio mio file di configurazione in wordpress
/bin/cp -fR /vagrant/wp-config.php /var/www/html/wordpress

# sposto wordpress nella root del webserver 
cd /var/www/html/
cp -r wordpress/* ./
rm -rf /var/www/html/wordpress/

# assegno i permessi 
sudo chown -R www-data:www-data /var/www/
sudo chmod -R 755 /var/www/html/

#restart di apache
sudo service apache2 restart