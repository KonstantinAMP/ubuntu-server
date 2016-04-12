#!/bin/bash

# install midnight commander
sudo apt-get --force-yes -y install mc

# install jdk
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.tar.gz

tar -xf jdk-8u77-linux-x64.tar.gz

sudo mkdir -p /usr/lib/java/jdk

sudo mv jdk1.8.0_77 /usr/lib/java/jdk

rm jdk-8u77-linux-x64.tar.gz

echo 'export JAVA_HOME="/usr/lib/java/jdk/jdk1.8.0_77"' >> .bashrc
echo 'PATH=:$PATH:$JAVA_HOME/bin' >> .bashrc

# install postgresql
sudo apt-get --force-yes -y install postgresql

# insta wildfly
wget http://download.jboss.org/wildfly/10.0.0.Final/wildfly-10.0.0.Final.tar.gz

tar -xf wildfly-10.0.0.Final.tar.gz

rm wildfly-10.0.0.Final.tar.gz

sudo mkdir /server

sudo mv wildfly-10.0.0.Final /server



