#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt install -y python3.8
sudo apt install -y git
sudo apt install wget
sudo apt install curl
sudo apt install -y python3-pip

sudo apt install -y nodejs
sudo apt install -y npm
sudo npm cache clean -f
sudo npm install -g n 
sudo n stable

pip3 install docker 
pip3 install importlib-metadata==4.13.0
pip3 install sphinx_rtd_theme==1.3.0


wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install


wget https://golang.org/dl/go1.21.6.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.21.6.linux-amd64.tar.gz
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile


git clone https://github.com/mitre/caldera.git --recursive
cd caldera
pip3 install -r requirements.txt
python3 server.py --insecure --build


