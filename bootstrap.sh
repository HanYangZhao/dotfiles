#!/bin/zsh
echo "**************************************************************************"
echo "**********************Update and upgrade self*****************************"
echo "**************************************************************************"
apt-get update
apt-get upgrade -y
apt-get install curl

echo "**************************************************************************"
echo "*********************Install tmux and vim*****************************"
echo "**************************************************************************"
apt-get install -y vim vim-nox tmux silversearcher-ag

echo "**************************************************************************"
echo "**********************Install python tools stack...***********************"
echo "**************************************************************************"
sudo apt-get install -y build-essential python-dev python-setuptools python-pip python3-dev python3-pip git


echo "**************************************************************************"
echo "***********************Install powerline...*******************************"
echo "**************************************************************************"
pip install powerline-status
sudo apt-get install -y fonts-powerline

echo "***** INSTALL DOCKER*******"

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce

sudo groupadd docker
sudo usermod -aG docker $USER
curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

echo "**********INSTALL SUBLIME**************"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install sublime-text

echo "**************************************************************************"
echo "************************Install Nodejs************************************"
echo "**************************************************************************"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "**************************************************************************"
echo "************************Install Tilda***************************************"
echo "**************************************************************************"
sudo apt-get install -y tilda
sudo usermod -a -G dialout $USER
echo "****************************DONE******************************************"
