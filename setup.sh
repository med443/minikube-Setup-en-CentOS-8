
## Install minikube ##
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
sudo rpm -Uvh minikube-latest.x86_64.rpm

## If minikube fails to start, config the drivers for compatible container or virtual-machine manager.##
yum groupinstall "Virtualization Host"
yum install qemu-kvm libvirt libvirt-python libguestfs-tools virt-install
systemctl start libvirtd.service

