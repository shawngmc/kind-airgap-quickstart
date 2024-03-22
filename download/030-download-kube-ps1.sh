#!/bin/bash

source "$GAP_DIR/.env"

# Download KubePS1
KUBEPS1_URL="https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh"
echo "${KUBEPS1_URL}" >> ${GAP_DIR}/urls.txt
wget "${KUBEPS1_URL}" -O ${GAP_DIR}/kube-ps1

