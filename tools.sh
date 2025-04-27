#!/bin/bash

apt install net-tools -y
apt install mysql postgresql -y

# Instalação Golang
cd /usr/local && wget https://go.dev/dl/go1.24.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /root -xzf go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/root/go/bin
echo "PATH=\$PATH:/root/go/bin" >> /root/.bashrc


# Instalação Python3
sudo apt-get install python3.9 -y
apt install python3-pip

# Instalação de Ferramentas
mkdir /opt/github/
cd /opt/github/ && git clone https://github.com/OJ/gobuster.git && cd gobuster && go get && go build && go install
apt install -y burpsuite
mkdir /usr/share/wordlists/Seclists && cd /usr/share/wordlists/Seclists/ && git clone https://github.com/danielmiessler/SecLists.git
