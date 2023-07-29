proxmox_url = "https://192.168.0.101:8006/api2/json"  # Your Proxmox IP Address
proxmox_username = "root@pam!packer"  # API Token ID
proxmox_token = "96328d2b-1cc3-485d-9a8f-15bd75987119"
proxmox_nodename = "pve01"

proxmox_storage      = "local-lvm"
proxmox_storage_type = "lvm"
talos_version        = "v1.4.2"
static_ip            = "10.1.1.30/24" # static ip for vm to ssh
gateway              = "10.1.1.1" # gateway for vm to ssh

