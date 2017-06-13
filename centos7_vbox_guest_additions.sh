#!/bin/bash
yum update -y
yum install -y dkms gcc make kernel-devel bzip2 binutils patch libgomp glibc-headers glibc-devel kernel-headers
mkdir -p /media/cdrom
mount /dev/cdrom /media/cdrom
sh /media/cdrom/VBoxLinuxAdditions.run
