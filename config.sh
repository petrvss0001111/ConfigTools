#!/bin/bash

# Essencials Tools
apt install wget curl -y
apt install git make gcc -y
apt install net-tools -y
apt install libpcap-dev -y
apt install nc -y

# Essencials Tools II
apt install mysql postgresql openssh-client -y
apt install tcpdump -y
apt install openssh -y

mkdir ~/Config && cd ~/Config

# Instalação Golang
wget https://go.dev/dl/go1.24.2.linux-amd64.tar.gz
rm -rf /usr/local/go && rm -rf /root/go && tar -C /root -xzf go1.24.2.linux-amd64.tar.gz
export PATH=$PATH:/root/go/bin
echo "PATH=\$PATH:/root/go/bin" >> /root/.bashrc && echo "PATH=\$PATH:/root/go/bin" >> /root/.zshrc
mkdir ~/Config/Packages && mv go1* ~/Config/Packages/


# Python3 Install
sudo apt-get install python3.9 -y
apt install python3-pip

# Install Github Tools for Pentest
mkdir ~/Config/Github
cd  ~/Config/Github && git clone https://github.com/OJ/gobuster.git && cd gobuster && go get && go build && go install
apt install -y burpsuite
mkdir /usr/share/wordlists/ && cd /usr/share/wordlists/ && git clone https://github.com/danielmiessler/SecLists.git


# Install Tools For Windows
mkdir  ~/Config/WindowsResoures
cd  ~/Config/WindowsResources
git clone https://github.com/bitsadmin/wesng.git
git clone https://gitlab.com/kalilinux/packages/windows-binaries.git && cd windows-binaries && rm -rf debian && wget https://the.earth.li/~sgtatham/putty/latest/w64/plink.exe
