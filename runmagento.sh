#!/bin/bash

sudo php bin/magento setup:upgrade
sudo php bin/magento setup:di:compile
sudo php bin/magento setup:static-content:deploy -f
sudo php bin/magento c:c
sudo php bin/magento c:f
sudo php bin/magento indexer:reindex

sudo chown -R www-data:www-data /var/www/html/Juvesys
sudo chmod -R 777  /var/www/html/Juvesys 

echo " "
echo "Hasta pronto"
