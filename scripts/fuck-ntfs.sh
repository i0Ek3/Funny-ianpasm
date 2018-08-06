# !/bin/bash
# This script will make you mac access the ntfs type external disk directly

# change $1 to your external disk name 
sudo echo 'LABEL=\$1 none ntfs rw,auto,nobrowse' > /etc/fstab

# 链接到桌面
sudo ln -s /Volumes/ ~/Desktop/Udisk
