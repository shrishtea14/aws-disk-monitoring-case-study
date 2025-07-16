🖥️ Multi-Account AWS EC2 Disk Utilization Monitoring (Case Study)
This repository presents a case study for building a scalable and secure monitoring solution for EC2 disk utilization across multiple AWS accounts using Ansible and AWS Systems Manager (SSM).
⚠️ Disclaimer: This is a case study project, and no real data or infrastructure has been used.

📌 Objectives
✅ Monitor disk usage on EC2 instances without SSH or third-party agents
✅ Enable centralized visibility across AWS accounts
✅ Use IAM roles and SSM for secure, scalable access



🗂️ Project Structure
aws-disk-monitoring-case-study/
├── ansible/                # Contains Ansible playbooks (e.g., ping.yml)
├── diagrams/               # System architecture diagrams (draw.io/png)
├── inventory/              # Inventory files for Ansible
├── output/                 # Placeholder for monitoring outputs
├── scripts/                # Custom scripts (if needed in future steps)
├── requirements.txt        # Ansible collections required
├── requirements.yml        # For Ansible Galaxy collection installation
└── README.md               # Project documentation

🖼️ Architecture Diagram
📍 Located in: diagrams/architecture.png

🧭 This diagram illustrates the SSM-based automation flow across multiple AWS accounts.

🧰 Tools & Technologies Used
🔧 Ansible (v2.18+)
☁️ Amazon AWS Collection for Ansible
🔐 AWS Systems Manager (SSM)
🔄 IAM Cross-Account Roles
💻 macOS Terminal + VS Code/TextEdit (for editing)

🚀 Setup Instructions
📥 Step 1: Clone and Initialize the Repo
git clone https://github.com/shrishtea14/aws-disk-monitoring-case-study.git
cd aws-disk-monitoring-case-study
📦 Step 2: Install Ansible Collections
ansible-galaxy collection install -r requirements.yml
🧪 Step 3: Test EC2 Access with Ping
ansible-playbook -i inventory/hosts ansible/ping.yml
📌 This uses the amazon.aws.aws_ssm module to ping EC2s via SSM.

🗄️ Sample Inventory File (inventory/hosts)
[aws_ec2_instances]
i-xxxxxxxxxxxxxx1

[aws_ec2_instances:vars]
ansible_connection=aws_ssm
region=us-east-1

📋 Sample Playbook (ansible/ping.yml)
---
- name: Ping EC2 instances via SSM
  hosts: aws_ec2_instances
  gather_facts: false
  tasks:
    - name: Ping using AWS SSM
      amazon.aws.aws_ssm:
        document_name: AWS-RunShellScript
        parameters:
          commands: ["echo pong"]

📁 Output Folder
Monitoring command outputs (simulated) will be stored under the output/ folder in later steps.

👩‍💻 Author Note
This project is a learning exercise and portfolio demonstration by Shrishti Sisodia. It simulates how to:
🧱 Design a multi-account observability solution
⚙️ Automate cloud operations using Ansible & AWS
🧾 Work with YAML, Git, and command-line tools effectively

🔮 Next Steps
✨ Add simulated command output scripts
📊 Add automated data gathering playbooks (CPU, disk, memory usage)
🔐 Implement IAM role assumption logic

📬 Feedback / Collaboration
Have ideas or suggestions? Feel free to raise issues or contribute enhancements. Let’s build better cloud-native automation together 🌐✨









