
sudo yum install -y epel-release
sudo yum install -y openssh-server

sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
sudo yum install -y docker-compose
sudo yum install bash-completion

sudo yum install open-vm-tools

sudo systemctl enable vmtoolsd
sudo systemctl start vmtoolsd
