#!/bin/bash
yum update -y
yum install -y dkms gcc make kernel-devel bzip2 binutils patch libgomp glibc-headers glibc-devel kernel-headers
mkdir -p /media/cdrom
mount /dev/cdrom /media/cdrom
######
# this step will fail, reboot and run the script again
# once guest additions are installed, reboot again to show shared folders under /media
sh /media/cdrom/VBoxLinuxAdditions.run
