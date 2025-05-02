#!/bin/bash

# Essencials
apt install wget curl -y
apt install git make gcc -y
apt install net-tools -y
apt install libpcap-dev -y
apt install nc -y

# Instalação Ferramentas Essenciais II
apt install mysql postgresql openssh-client -y
apt install tcpdump -y

mkdir /opt/Tools

# Instalação Golang
cd /opt/Tools && wget https://go.dev/dl/go1.24.2.linux-amd64.tar.gz
rm -rf /usr/local/go && rm -rf /root/go && tar -C /root -xzf go1.24.2.linux-amd64.tar.gz
export PATH=$PATH:/root/go/bin
echo "PATH=\$PATH:/root/go/bin" >> /root/.bashrc && echo "PATH=\$PATH:/root/go/bin" >> /root/.zshrc
mkdir /opt/Tools/Packages && mv go1* /opt/Tools/Packages/


# Instalação Python3
sudo apt-get install python3.9 -y
apt install python3-pip

# Instalação de Ferramentas Para Pentest
mkdir /opt/Tools/github/
cd /opt/Tools/github/ && git clone https://github.com/OJ/gobuster.git && cd gobuster && go get && go build && go install
apt install -y burpsuite
mkdir /usr/share/wordlists/Seclists && cd /usr/share/wordlists/Seclists/ && git clone https://github.com/danielmiessler/SecLists.git


# Instalação de Ferramentas Para Windows
mkdir /opt/Tools/windows-resoures
wget https://the.earth.li/~sgtatham/putty/latest/w64/plink.exe -O /opt/Tools/windows-resources/plink.exe
