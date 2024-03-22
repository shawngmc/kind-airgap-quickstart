#!/bin/bash

source ${GAP_DIR}/.env

echo "Staging Kube-PS1 executable..."
sudo install ${GAP_DIR}/kube-ps1 /usr/local/bin/

echo "Adding Kube-PS1 to .bashrc..."
echo "source /usr/local/bin/kube-ps1.sh" >> ~/.bashrc
echo "PS1='[\u@\h \W "'$(kube_ps1)'"]\$ '" >> ~/.bashrc
