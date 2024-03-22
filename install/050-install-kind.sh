#!/bin/bash

source ${GAP_DIR}/.env



echo "Staging kind executable..."
sudo cp ${GAP_DIR}/kind /usr/local/bin/kind
sudo chmod 755 /usr/local/bin/kind
kind --version

echo "Staging kind image..."
sudo podman load -i ${GAP_DIR}/kind-${K8S_VERSION}-${KIND_IMAGE_HASH}.tar

echo "Create basic kind cluster..."
sudo /usr/local/bin/kind create cluster \
  --wait 60s \
  --image=${KIND_IMAGE}

echo "Get kubeconfig..."
mkdir -pv ~/.kube
echo "$(sudo /usr/local/bin/kind get kubeconfig)" > ~/.kube/config
