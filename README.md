# Kubernetes Cluster Automation using Terraform & Ansible on AWS

## Project Overview
This project demonstrates how to provision AWS infrastructure using Terraform and automate Kubernetes cluster installation using Ansible.

The infrastructure consists of:

- 1 Kubernetes Control Plane (Master)
- 1 Kubernetes Worker Node

After provisioning EC2 instances with Terraform, Ansible automatically configures the servers, installs Kubernetes components, initializes the control plane, and joins the worker node to the cluster.
