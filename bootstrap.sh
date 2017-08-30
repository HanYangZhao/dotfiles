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
apt-get install -y vim vim-nox tmux

echo "**************************************************************************"
echo "**********************Install python tools stack...***********************"
echo "**************************************************************************"
sudo apt-get install -y build-essential python-dev python-setuptools python-pip python3-dev python3-pip git


echo "**************************************************************************"
echo "***********************Install powerline...*******************************"
echo "**************************************************************************"
pip install powerline-status


echo "***** INSTALL DOCKER*******"
curl -o docker.sh https://get.docker.com/
chmod +x docker.sh
sudo ./docker.sh

curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "**********INSTALL SUBLIME**************"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install sublime-text

