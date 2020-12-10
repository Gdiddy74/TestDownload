# Gareth Dunn 30/11/2020
# Bash script to install MDATP, onboard to MDSC and configure product

# Variables
github_path=https://github.com/Gdiddy74/TestDownload/raw/main

# Install yum, configure MDATP repo, install MS public key, download data to cache
sudo yum -y install yum-utils &&
sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/rhel/8/prod.repo &&
sudo rpm --import http://packages.microsoft.com/keys/microsoft.asc &&
sudo yum makecache &&
# Install MDTATP
sudo yum -y install mdatp &&

# MDSC onboarding section, first install python 3
sudo yum install python3 &&
# Download latest onboarding package and unzip
wget --no-check-certificate $github_path/WindowsDefenderATPOnboardingPackage.zip -O /WindowsDefenderATPOnboardingPackage.zip
# unzip /WindowsDefenderATPOnboardingPackage.zip &&
# Run onboarding script
#python MicrosoftDefenderATPOnboardingLinuxServer.py &&

# Product Configuration Section, download configuration JSON file
wget --no-check-certificate $github_path/mdatp_managed.json -O  /etc/opt/microsoft/mdatp/managed/mdatp_managed.json


