#!/bin/bash

# Simulated log processor for Ansible output
echo "Processing simulated disk check results..."

# In real scenarios, you would parse Ansible JSON output and store in a log or DB
echo "Instance: i-1234567890abcdef0 - Disk usage: 70%" >> output/disk_usage_report.txt
echo "Done. Results saved to output/disk_usage_report.txt"

