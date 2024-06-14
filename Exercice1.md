su -
fdisk -l
fdisk /dev/sdb

# Dans fdisk:


sudo mkfs.ext4 -L DATA /dev/sdb1
sudo mkswap -L SWAP /dev/sdb2

sudo mkdir /mnt/data
sudo mount /dev/sdb1 /mnt/data

sudo nano /etc/fstab
# Ajouter les lignes suivantes à la fin:
# /dev/sdb1  /mnt/data  ext4  defaults  0  2
# /dev/sdb2  none  swap  sw  0  0

sudo swapoff -a
sudo swapon /dev/sdb2
sudo swapon --show
