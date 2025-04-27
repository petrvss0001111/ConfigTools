#!/bin/bash

# Instalação Golang
cd /usr/local && wget https://go.dev/dl/go1.24.2.linux-amd64.tar.gz
rm -rf /usr/local/go && rm -rf /usr/bin/go tar -C /usr/bin/ -xzf go1.24.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/bin/go/bin

# Instalação Python3
sudo apt-get install python3.9 -y

# Instalação de Ferramentas
mkdir /opt/gobuster/ && git clone https://github.com/OJ/gobuster.git && cd gobuster && go get && go build && go install
apt install -y burpsuite
mkdir /usr/share/wordlists/Seclists && cd /usr/share/wordlists/Seclists/ && git clone https://github.com/danielmiessler/SecLists.git
