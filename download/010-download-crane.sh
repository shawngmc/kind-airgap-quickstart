#!/bin/bash

source "$GAP_DIR/.env"

# Download Crane
CRANE_URL="https://github.com/google/go-containerregistry/releases/download/${CRANE_VERSION}/go-containerregistry_${OS}_${ARCH}.tar.gz"
echo "${CRANE_URL}" >> ${GAP_DIR}/urls.txt
wget "${CRANE_URL}" -O ${GAP_DIR}/go-containerregistry.tar.gz

# Temp Install Crane
tar -zxvf ${GAP_DIR}/go-containerregistry.tar.gz -C ${GAP_DIR}/temp crane
chmod 755 ${GAP_DIR}/temp/crane
