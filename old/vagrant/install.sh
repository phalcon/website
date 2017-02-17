#!/usr/bin/env bash

echo "nameserver 8.8.8.8" >> /etc/resolvconf/resolv.conf.d/head
echo "nameserver 8.8.4.4" >> /etc/resolvconf/resolv.conf.d/head
sudo service resolvconf restart

echo "Use ondrej/php5-5.6 PPA for latest PHP..."
sudo add-apt-repository ppa:ondrej/php5-5.6

sudo apt-get -y update

sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

sudo apt-get install -y git unzip htop memcached

cd ~
mkdir build

echo "Installing PHP..."

sudo apt-get -y install php5-cli php5-dev php5-fpm php5-curl php5-memcache

sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo "Installing Zephir..."

sudo apt-get install -y git gcc make re2c php5-dev libpcre3-dev

cd ~/build

git clone https://github.com/phalcon/zephir
cd zephir
./install-json
./install -c

echo "Installing Phalcon 2..."

cd ~/build
wget -o /dev/null https://github.com/phalcon/cphalcon/archive/2.0.0.zip
unzip 2.0.0.zip -d cphalcon > /dev/null
rm 2.0.0.zip
cd cphalcon/cphalcon-2.0.0
zephir install

#git clone -b 2.0.0 https://github.com/phalcon/cphalcon.git
#cd cphalcon
#zephir install

sudo echo extension=phalcon.so > /etc/php5/mods-available/phalcon.ini
sudo php5enmod phalcon

echo "Installing Nginx..."

sudo apt-get -y install nginx-full

sudo cp /vagrant/vagrant/etc/nginx/nginx.conf /etc/nginx/nginx.conf
sudo rm -rf /etc/nginx/sites-enabled/*
sudo cp /vagrant/vagrant/etc/nginx/sites-enabled/* /etc/nginx/sites-enabled/

sudo service nginx restart
sudo service php5-fpm restart
