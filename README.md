# Kubernetes Cluster Automation using Terraform & Ansible on AWS

## Project Overview
This project demonstrates how to provision AWS infrastructure using Terraform and automate Kubernetes cluster installation using Ansible.

The infrastructure consists of:

- 1 Kubernetes Control Plane (Master)
- 1 Kubernetes Worker Node

After provisioning EC2 instances with Terraform, Ansible automatically configures the servers, installs Kubernetes components, initializes the control plane, and joins the worker node to the cluster.

## Architecture
terraform-ansible-kubernetes-cluster/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   
│
├── ansible/
│   ├── inventory
│   ├── install_k8s.yml
│   
│
│
├── .gitignore
└── README.md

## Technologies Used
- AWS EC2
- Terraform
- Ansible
- Kubernetes
- kubeadm
- containerd
- Ubuntu 24.04
- Linux

## Project Workflow
Terraform -> AWS EC2 Instances -> Ansible Playbook -> Install Kubernetes -> Initialize Master -> Join Worker -> Ready Kubernetes Cluster


## Terraform

Terraform provisions:

- Security Groups
- EC2 Instances
- SSH Key Pair
- Networking

## Ansible Playbook

The playbook performs:

- Disable Swap
- Configure Kernel Modules
- Configure Sysctl
- Install Containerd
- Configure Containerd
- Install kubeadm
- Install kubelet
- Install kubectl
- Initialize Kubernetes Master
- Generate Join Command
- Join Worker Node


## Future Enhancements

- Add multiple worker nodes
- Deploy NGINX using Kubernetes
- Deploy Monitoring Stack
- Integrate Jenkins CI/CD
