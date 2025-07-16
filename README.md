# aws-disk-monitoring-case-study
Ansible-based EC2 disk utilization monitoring solution for multi-account AWS setups

# Multi-Account AWS EC2 Disk Utilization Monitoring (Case Study)

##  Overview
This project provides a scalable and secure solution to monitor disk utilization across multiple AWS accounts using Ansible and AWS Systems Manager (SSM).

## Goals
- Prevent disk space-related outages
- Enable centralized visibility into EC2 storage usage
- Avoid third-party agents or SSH-based manual checks

## Assumptions
- Each AWS account has SSM-enabled EC2 instances
- Role-based cross-account access is in place
- Ansible is used as the automation framework

## 📂 Structure
📂 Structure

- `ansible/`: Main Ansible playbook and roles
- `inventory/`: Inventory of target EC2s (SSM-based or IPs for simulation)
- `scripts/`: Helper scripts for output parsing or post-processing
- `output/`: Collected disk usage metrics (JSON, CSV)
- `diagrams/`: High-level solution architecture diagrams
- `requirements.txt`: Dependencies for Ansible and AWS SDKs



