1. `su -`
2. `fdisk -l`
#### Créer les partitions
3. fdisk /dev/sdb

#### Configurer les partitions
4. `mkfs.ext4 -L DATA /dev/sdb1`
5. `mkswap -L SWAP /dev/sdb2`

#### Monter la partition DATA
6. `mkdir /mnt/data`
7. `mount /dev/sdb1 /mnt/data`

#### Modifier les fichier fstab pour démarrage auto
8. `nano /etc/fstab`
   
Ajouter les lignes suivantes à la fin (utiliser la commande `blkid` pour les trouver)
- UUID=XXX  /mnt/data  ext4  defaults  0  2
- UUID=XXX  none  swap  sw  0  0

#### Activer la partition SWAP
9. `swapoff -a`
10. `swapon /dev/sdb2`
11. `swapon --show`
