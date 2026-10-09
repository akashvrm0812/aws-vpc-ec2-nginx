![AWS Terraform Banner](https://capsule-render.vercel.app/api?type=waving&color=0:232F3E,50:2563EB,100:00C7B7&height=220&section=header&text=AWS%20VPC%20%26%20EC2&fontSize=38&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Cloud%20Infrastructure%20%7C%20Terraform%20%7C%20Nginx&descAlignY=58&descSize=16)

<div align="center">

# AWS VPC, EC2 & Nginx using Terraform

### Deploying cloud infrastructure with Infrastructure as Code

[![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?logo=amazonaws&logoColor=white)](https://aws.amazon.com/)
[![EC2](https://img.shields.io/badge/Amazon-EC2-FF9900?logo=amazonec2&logoColor=white)](https://aws.amazon.com/ec2/)
[![Nginx](https://img.shields.io/badge/Web_Server-Nginx-009639?logo=nginx&logoColor=white)](https://nginx.org/)
[![GitHub](https://img.shields.io/badge/Version_Control-GitHub-181717?logo=github&logoColor=white)](https://github.com/akashvrm0812)

[![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&weight=500&size=20&pause=1000&color=00C7B7&center=true&vCenter=true&width=700&lines=Provisioning+AWS+Infrastructure+with+Terraform;Creating+VPC+and+EC2+Resources;Deploying+Nginx+on+AWS)](https://git.io/typing-svg)

</div>

---

## Overview

This project demonstrates how to provision AWS cloud infrastructure using **Terraform Infrastructure as Code (IaC)** and deploy an Nginx web server on an Amazon EC2 instance.

The project covers core cloud networking concepts, infrastructure provisioning, security group configuration, and web server deployment. It provides practical experience in automating AWS infrastructure through declarative configuration.

## Architecture

```text
                 Internet
                    |
                    v
             Internet Gateway
                    |
                    v
                AWS VPC
                    |
                    v
              Public Subnet
                    |
                    v
             Security Group
                    |
                    v
                EC2 Instance
                    |
                    v
              Nginx Web Server
                    |
                    v
             Web Page in Browser
```

## Technologies Used

- **Amazon VPC** — Isolated virtual networking environment
- **Amazon EC2** — Virtual server for hosting the web server
- **Internet Gateway** — Connectivity between the VPC and the internet
- **Security Groups** — Network traffic access control
- **Nginx** — Web server software
- **Terraform** — Infrastructure as Code
- **AWS Provider for Terraform** — AWS resource management
- **Git and GitHub** — Version control and project documentation

## Project Structure

```text
aws-vpc-ec2-nginx/
├── .gitignore
├── .terraform.lock.hcl
├── main.tf
└── README.md
```

*The exact files may vary depending on your Terraform configuration.*

## Features

- **Infrastructure automation** using Terraform.
- **Custom VPC creation** for an isolated AWS networking environment.
- **Subnet configuration** for hosting cloud resources.
- **Internet connectivity** through an Internet Gateway and routing configuration.
- **EC2 instance provisioning** for running a web server.
- **Security group configuration** to control inbound and outbound traffic.
- **Nginx deployment** to serve a web page from the EC2 instance.
- **Repeatable infrastructure provisioning** through declarative code.
- **Version-controlled infrastructure** using Git and GitHub.

## Prerequisites

Before running this project, ensure you have:

- An AWS account.
- Terraform installed.
- AWS CLI installed and configured, or another supported AWS credentials method.
- Appropriate AWS permissions to create VPC, subnet, routing, security group, and EC2 resources.
- Git installed.
- An AWS region selected for deployment.

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/akashvrm0812/aws-vpc-ec2-nginx.git
cd aws-vpc-ec2-nginx
```

### 2. Configure AWS Credentials

Configure a local AWS CLI profile:

```bash
aws configure
```

Enter your credentials and preferred AWS region when prompted.

For improved security, use temporary credentials through AWS IAM Identity Center or an appropriate role-based workflow when available. Never hardcode credentials in Terraform files or commit them to GitHub.

### 3. Initialize Terraform

```bash
terraform init
```

This initializes the Terraform working directory and downloads the required provider plugins.

### 4. Validate the Configuration

```bash
terraform validate
```

This checks the Terraform configuration for syntax and configuration errors.

### 5. Format the Configuration

```bash
terraform fmt
```

This formats Terraform files according to standard formatting conventions.

### 6. Preview Infrastructure Changes

```bash
terraform plan
```

Review the proposed infrastructure changes before applying them.

### 7. Deploy the Infrastructure

```bash
terraform apply
```

Review the execution plan and type `yes` only if you approve the resources Terraform will create.

### 8. Access the Nginx Web Server

After deployment, retrieve the EC2 public IP address from the Terraform output or AWS Management Console.

Open the following URL in your browser, replacing the placeholder with your instance's public IP:

```text
http://<EC2-PUBLIC-IP>
```

If Nginx is installed and configured correctly, the browser should display the web page served by your instance.

Ensure the security group allows HTTP traffic on port `80` and that the instance has the required internet connectivity.

## Security Best Practices

- Never hardcode AWS access keys or secret keys in Terraform files.
- Use least-privilege AWS permissions.
- Restrict SSH access on port `22` to your own trusted IP address rather than allowing access from everywhere.
- Allow HTTP traffic on port `80` only when required for the web server.
- Consider HTTPS with TLS for production web applications.
- Exclude `.terraform/`, `*.tfstate*`, and sensitive variable files from Git.
- Store Terraform state securely because it may contain sensitive information.
- Review Terraform plans before applying infrastructure changes.
- Monitor AWS resource usage and remove unused resources to avoid unexpected charges.

## Cleanup

When you have finished testing, remove the resources managed by the Terraform configuration:

```bash
terraform destroy
```

Review the proposed deletions and confirm only if you intend to delete those resources. Do not run this against shared or production infrastructure without authorization.

## Learning Outcomes

Through this project, I practiced:

- Provisioning AWS infrastructure using Terraform.
- Understanding VPCs, subnets, routing, and Internet Gateways.
- Deploying and managing EC2 instances.
- Configuring security groups and network access.
- Installing and serving content through Nginx.
- Validating and formatting Terraform configurations.
- Managing infrastructure code with Git and GitHub.
- Applying cloud security and resource cleanup practices.

## Future Improvements

- Introduce reusable Terraform modules.
- Add configurable variables and outputs.
- Use remote Terraform state storage with encryption and state locking.
- Configure HTTPS with TLS certificates.
- Add automated Terraform validation through GitHub Actions.
- Improve EC2 provisioning with reusable cloud-init or user-data configuration.
- Add monitoring and logging for the deployed infrastructure.

## Author

**Akash Verma**



---

*This project is intended for learning and demonstration purposes. Review all infrastructure changes and security settings before deploying to a production AWS account.*
