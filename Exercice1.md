1. `su -`
2. `fdisk -l`
#### Créer les partitions
3. `fdisk /dev/sdb`
   
![blkid](https://github.com/PKechichian/TSSR2405_Checkpoint1/blob/main/images/Partitions.png)

#### Configurer les partitions
4. `mkfs.ext4 -L DATA /dev/sdb1`
5. `mkswap -L SWAP /dev/sdb2`

#### Monter la partition DATA
6. `mkdir /mnt/data`
7. `mount /dev/sdb1 /mnt/data`

#### Modifier les fichier fstab pour démarrage auto
8. `nano /etc/fstab`
   
Ajouter les lignes suivantes à la fin (utiliser la commande `blkid` pour trouver les UUID)

- UUID=XXX  /mnt/data  ext4  defaults  0  2
- UUID=XXX  none  swap  sw  0  0
  
![blkid](https://github.com/PKechichian/TSSR2405_Checkpoint1/blob/main/images/Blkid.png)

![fstab](https://github.com/PKechichian/TSSR2405_Checkpoint1/blob/main/images/fstab.png)

#### Activer la partition SWAP
9. Désactiver tous les SWAP : `swapoff -a`
10. Activer le SWAP souhaité : `swapon /dev/sdb2`
11. Vérifier : `swapon --show`

![finalfdisk](https://github.com/PKechichian/TSSR2405_Checkpoint1/blob/main/images/fdisk_final.png)

### `History` cmd

![blkid](https://github.com/PKechichian/TSSR2405_Checkpoint1/blob/main/images/History.png)
