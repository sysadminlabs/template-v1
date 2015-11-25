#!/bin/bash

# SysAdminLabs init - do not remove or alter this section.
sudo sh /vagrant/SysAdminLabs/init.sh

# Add custom installation steps after this comment block.
# Call scripts located within the package or run commands directly in this script.
# Copy files from /vagrant/ (relative to root of the problem package) to their server location


sudo yum install -y httpd php php-pear
cp /vagrant/includes/index.php /var/www/html/
cp /vagrant/includes/httpd.conf /etc/httpd/conf/httpd.conf
cp /vagrant/includes/php.conf /etc/httpd/conf.d/php.conf
sh /vagrant/includes/iptables-config.sh
sudo chkconfig httpd on
sudo service httpd start

