talos+proxmox bootstrap guide:

1. wget -nc -q --show-progress -O "/var/lib/vz/template/iso/talos.iso" "https://github.com/siderolabs/talos/releases/download/v1.5.0-beta.1/metal-amd64.iso"

2. talosctl gen secrets -o secrets.yaml

3. talosctl gen config --with-secrets secrets.yaml <cluster-name> <cluster-endpoint> (try setting cluster-endpoint to the same ip address as your first node)

4. talosctl apply-config --insecure \
   --nodes 192.168.0.2 \
   --file controlplane.yaml

5. talosctl --talosconfig=./talosconfig \
   config endpoint 192.168.0.2 192.168.0.3 192.168.0.4

6. talosctl config merge ./talosconfig

7. talosctl bootstrap --nodes 192.168.0.2
