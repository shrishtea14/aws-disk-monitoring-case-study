# 🚀 Multi-Account AWS EC2 Disk Utilization Monitoring

This project provides a scalable and secure solution to monitor disk utilization across multiple AWS accounts using **Ansible** and **AWS Systems Manager (SSM)**. Designed to reduce downtime and improve storage visibility across a growing cloud footprint.

---

## ✅ Goals

- Prevent disk space-related outages across EC2 instances.
- Enable centralized and real-time visibility into EC2 storage usage.
- Use native AWS tools and automation with Ansible.
- Design for scale: support future account additions.

---

## 🔧 Assumptions

- Each AWS account has EC2 instances with **SSM Agent installed and active**.
- Required **IAM roles and policies** are in place for:
  - SSM access
  - Cross-account role assumption
- SSH-based access is not used (No direct agent installation or key-based auth).
- Ansible is the preferred automation/configuration tool.

---

## 📦 Project Structure

```bash
aws-disk-monitoring-case-study/
├── ansible/                # Ansible playbooks and roles
├── inventory/              # Static or dynamic inventories
├── scripts/                # Utility Python/Bash scripts
├── output/                 # Final reports and JSON outputs
├── diagrams/               # Architecture diagrams
├── requirements.txt        # Python/Ansible requirements
└── README.md               # Project overview and setup





