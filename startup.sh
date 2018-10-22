#!/bin/bash

wget https://github.com/chamilo/chamilo-lms/releases/download/v1.11.8/chamilo-1.11.8-php5.tar.gz
tar xvf chamilo-1.11.8-php5.tar.gz
rm chamilo-1.11.8-php5.tar.gz
cd ./dockerimage
docker build -t 'opsforge/chamilo:latest' .
cd ..
docker-compose up -d

echo ""
echo "Chamilio on Docker successfully set up"
echo ""
