#!/bin/bash

if [ "$(ls -A /var/www/html)" ]; then
   echo "Chamilo already installed - moving on."
else
   echo "Chamilo not installed - deploying."
   cd /var/www/html
   wget https://github.com/chamilo/chamilo-lms/releases/download/v1.11.8/chamilo-1.11.8-php5.tar.gz
   tar xvf chamilo-1.11.8-php5.tar.gz
   mv chamilo-1.11.8-php5*/* ./
   rm -rf chamilo-1.11.8-php5.tar.gz
   rm -rf chamilo-1.11.8-php5
   chown -R root:root ./
   chmod -R 0777 ./
fi

/bin/bash -c 'a2enmod rewrite; apache2-foreground'
