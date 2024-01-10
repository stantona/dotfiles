#!/bin/bash

KUBECTL_VERSION='1.23.0'

if [[ -f /usr/local/bin/kubectl ]]; then
  sudo rm /usr/local/bin/kubectl
fi

pushd /tmp
curl --silent -LO "https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/darwin/arm64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
sudo chown root: /usr/local/bin/kubectl
kubectl version --short
popd
