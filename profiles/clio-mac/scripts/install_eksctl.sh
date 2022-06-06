#!/bin/bash
# Instructions: https://docs.aws.amazon.com/eks/latest/userguide/eksctl.html

if [[ -f /usr/local/bin/eksctl ]]; then
  sudo rm /usr/local/bin/eksctl
fi

pushd /tmp
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_Darwin_arm64.tar.gz" | tar xz
sudo mv /tmp/eksctl /usr/local/bin
popd
