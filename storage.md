Proxmox and Storage Management
Summary
This document provides an overview of managing storage in a Proxmox Virtual Environment, with a focus on Logical Volume Management (LVM).

Logical Volume Management (LVM)
LVM allows for dynamic volume resizing and allows you to create snapshots of your systems.

Checking Existing Volumes
Check physical volumes: pvdisplay
Check volume groups: vgdisplay
Check logical volumes: lvdisplay
Creating a New Logical Volume
Note: The physical volume must not be in use by any existing volume group or logical volume. In the example used, the physical volume /dev/sda was in use.

Create a new physical volume: pvcreate /dev/sda
Create a new volume group: vgcreate proxmox_storage1 /dev/sda
Create a new logical volume: lvcreate -n vms -L 100G proxmox_storage1
Format the logical volume: mkfs.ext4 /dev/proxmox_storage1/vms
Resizing a Logical Volume
Reduce the size of a logical volume: lvreduce -L -100G /dev/pve/data

Note: Be sure to back up data before resizing, as it can lead to data loss. Ensure the filesystem is unmounted before performing resize operations.

Creating a Virtual Disk
To create a virtual disk (/dev/sdb) using the physical disk (/dev/sda):

Navigate to "Storage" > "Directory" > "Add".
In the "Add Directory" window, enter the following details:
ID: An identifiable name for the storage
Directory: Path to your disk
Content: Disk Image, ISO image
Click on "Add".
Conclusion
Proxmox Virtual Environment offers versatile storage management through LVM and other tools. It's essential to ensure that data is backed up before carrying out operations like resizing or creating new volumes to prevent data loss.
