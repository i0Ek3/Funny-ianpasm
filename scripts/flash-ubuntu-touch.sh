 ## 
 ## flash-ubuntu-touch.sh
 ## ianpasm(kno30826@gmail.com)
 ## 2017-12-20 14:33:54
 ##
 ## Usage: ./flash-ubuntu-touch.sh your-device-code-name
 ##

#!/bin/bash

echo " "
echo "This script will flash ubuntu touch 16.04 on your devices which you given."
echo "There are some devices aviaiable:"
echo "  -bacon(Oneplus One)"
echo "  -hammerhead(Google Nexus 5)"
echo "   ...."
echo "And other devices you can check this site: http://system-image.ubports.com."
echo "Now I defalut you understand our items,let we go!"
sleep 20

echo "Install tools"
sudo apt install ubuntu-device-flash

echo "Flashing now..."
sudo ubuntu-device-flash --server=http://system-image.ubports.com touch --device=$1 --channel=ubports-touch/16.04/devel --bootstrap --wipe
