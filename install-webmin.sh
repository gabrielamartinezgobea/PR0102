#!/bin/bash

apt update
apt upgrade -y
apt install -y curl openssh-server

systemctl enable --now ssh

curl -o webmin-setup-repo.sh https://raw.githubusercontent.com/webmin/webmin/master/webmin-setup-repo.sh
chmod +x webmin-setup-repo.sh
./webmin-setup-repo.sh

apt install -y webmin
systemctl enable --now webmin

ufw allow 22/tcp
ufw allow 10000/tcp
ufw --force enable

echo "INSTALACION FINALIZADA"
systemctl is-active ssh
systemctl is-active webmin
ufw status
ss -tulpn | grep 10000
