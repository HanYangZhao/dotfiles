#!/bin/zsh
echo "**************************************************************************"
echo "**********************Update and upgrade self*****************************"
echo "**************************************************************************"
apt-get update
apt-get upgrade -y

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


