#!/usr/bin/env bash

apt update 
apt install curl -y

# install goland 1.22.4
wget https://golang.org/dl/go1.22.4.linux-amd64.tar.gz --no-check-certificate
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.4.linux-amd64.tar.gz
rm -f go1.22.4.linux-amd64.tar.gz
mkdir -p $HOME/go/{bin,src,pkg}
echo "export GOPATH=$HOME/go" | tee -a $HOME/.profile
echo "export PATH=$PATH:/home/vagrant/go/bin:/usr/local/go/bin" | tee -a $HOME/.profile

# for vagrant user
mkdir -p /home/vagrant/go/{bin,src,pkg}
echo "export GOPATH=/home/vagrant/go" | tee -a /home/vagrant/.profile
echo "export PATH=$PATH:/home/vagrant/go/bin:/usr/local/go/bin" | tee -a /home/vagrant/.profile