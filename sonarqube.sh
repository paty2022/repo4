#!/bin/bash

    #Description : installation of sonarqube
    #Author : patricia Kana
    #Date : 26-feb-2022

   echo "Installation of Sonarqube on centos7"

sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

sleep2

cd /opt

sudo yum install wget -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

sleep2

sudo yum install unzip -y

sudo unzip /opt/sonarqube-9.3.0.51899.zip

sleep2

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

./sonar.sh start

   echo "Sonarqube installed succesfully"