#!/bin/bash

echo "Updating databases..."

apt-get update 

echo "Upgrading the server..."

apt-get upgrade -y

echo "Installing apache2"

apt-get install apache2 -y

echo "Installing unzip..."

apt-get install unzip -y

echo "Downloading website app..."

cd /tmp
wget https://github.com/LucasRBA/LabradorAdventures/archive/refs/heads/main.zip

unzip main.zip

cd LabradorAdventures-main

echo "Copying Resources to apache main directory..."

cp -R  * /var/www/html

mv labrador.html index.html

echo "Finished deploying..."
