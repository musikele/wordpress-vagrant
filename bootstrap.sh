sex +x

## installo software 
apt-get update
apt-get install -y language-pack-it
apt-get install -y apache2 libapache2-mod-php php-mysql php-soap php-curl php-xml sendmail

## setto la password di default di mysql; user: root - pwd: password 
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password password'
sudo apt-get -y install mysql-server

# script che inizializza il db 
cat /vagrant/wordpress.sql | sudo mysql --defaults-extra-file=/etc/mysql/debian.cnf

#if ! [ -L /var/www ]; then
#	rm -rf /var/www
#	ln -fs /vagrant /var/www
#fi

## scarico wordpress e lo unzippo 
cd /tmp
wget http://wordpress.org/latest.zip
apt-get install -y unzip
unzip -oq latest.zip -d /var/www/html/

# creo cartella wp-content/uploads
mkdir -p /var/www/html/wordpress/wp-content/uploads

# assegno i permessi 
chown -R www-data:www-data /var/www/
chmod -R 755 /var/www/html/wordpress

# copio mio file di configurazione in wordpress
/bin/cp -fR /vagrant/wp-config.php /var/www/html/wordpress

# sposto wordpress nella root del webserver 
cd /var/www/html/
cp -r wordpress/* ./
rm index.html
rm -rf /var/www/html/wordpress/

#restart di apache
sudo service apache2 restart