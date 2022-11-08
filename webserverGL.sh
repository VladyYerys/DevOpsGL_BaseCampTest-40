#!/bin/bash
# package updates
sudo yum update  -y

# apache installation, enabling and status check
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd | grep Active

# adding the needed permissions for creating and editing the index.html file
sudo chown -R $USER:$USER /var/www

# creating the html landing page
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Vlady Yerys</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1></h1>' >> index.html
echo '<h3></h3>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html
