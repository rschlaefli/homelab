#!/bin/sh
sudo apt-get install -y git python-pip python-dev software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install -y ansible
