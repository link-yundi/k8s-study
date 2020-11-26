#!/bin/bash
# docker设置

# Setup Docker daemon
mkdir -p /etc/docker

sudo cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

sudo mkdir -p /etc/systemd/system/docker.service.d

# Run Docker as systemd service
sudo systemctl daemon-reload
sudo systemctl enable docker
sudo systemctl start docker

# Check Docker version
docker version