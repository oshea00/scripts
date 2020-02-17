#!/bin/bash
# get latest minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64   && chmod +x minikube
# install
sudo mkdir -p /usr/local/bin
sudo install minikube /usr/local/bin
# get kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
# install
chmod +x ./kubectl
sudo install kubectl /usr/local/bin
# start
minikube start --vm-driver=docker
# verify
minikube status
# verify kubectl
kubectl get nodes

