sudo yum -y install yum-utils &&
sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/rhel/8/prod.repo &&
sudo rpm --import http://packages.microsoft.com/keys/microsoft.asc &&
sudo yum makecache &&
sudo yum -y install mdatp
