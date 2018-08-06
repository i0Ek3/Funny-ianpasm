## 
## install-mysql.sh
## ianpasm(kno30826@gmail.com)
## 2017-11-22 21:22:26
## 
 
#!/bin/bash

# ref : https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-16-04
# passwd:M@062&w
sudo apt update
sudo apt install mysql-server # install 
mysql_secure_installation # config
systemctl status mysql.service # boot service
mysqladmin -p -u root version # cat version
mysql -u root -p # login mysql
