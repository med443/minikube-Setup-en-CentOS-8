
# Install minikube 
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
sudo rpm -Uvh minikube-latest.x86_64.rpm

# If minikube fails to start, config the drivers for compatible container or virtual-machine manager.
yum groupinstall "Virtualization Host"
yum install qemu-kvm libvirt libvirt-python libguestfs-tools virt-install
systemctl start libvirtd.service

# In case of this error
$ minikube start --vm-driver=none
# 😄  minikube v1.17.1 on Ubuntu 20.04
# ✨  Using the none driver based on user configuration

# ❌  Exiting due to GUEST_MISSING_CONNTRACK: Sorry, Kubernetes 1.20.2 requires conntrack to be installed in root's path ##
 
sudo yum install -y conntrack
root@centos:/usr/sbin# cd /usr/bin/
root@centos:/usr/bin# ln -s /usr/sbin/conntrack conntrack

