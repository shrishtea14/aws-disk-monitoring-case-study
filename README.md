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


