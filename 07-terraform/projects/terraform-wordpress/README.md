# Terraform WordPress Project

For this project I used Terraform to deploy a working WordPress site on AWS.

The aim was to build everything through Terraform instead of manually creating the infrastructure in the AWS Console.

## What I built

The setup includes:

- VPC
- Public subnet
- Internet Gateway
- Route table
- Security group
- EC2 instance
- WordPress installed using a user data script

The EC2 instance runs Amazon Linux 2023 and is reachable through a public IP.

## How it works

Terraform creates the networking first, then launches the EC2 instance inside the public subnet.

The security group allows HTTP traffic on port 80 and SSH on port 22.

When the EC2 instance starts, the user data script automatically installs Apache, PHP, MariaDB and WordPress.

Terraform then outputs the instance ID, public IP and WordPress URL.

## Files

`main.tf` - Main AWS infrastructure

`variables.tf` - AWS region and EC2 instance type

`outputs.tf` - Instance ID, public IP and WordPress URL

`user_data.sh` - Installs and configures WordPress automatically

## Commands used

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
