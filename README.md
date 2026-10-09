
# AWS VPC, EC2 & Nginx using Terraform

### Deploying AWS Cloud Infrastructure with Infrastructure as Code

[![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?logo=amazonaws&logoColor=white)](https://aws.amazon.com/)
[![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Amazon EC2](https://img.shields.io/badge/Amazon-EC2-FF9900?logo=amazonec2&logoColor=white)](https://aws.amazon.com/ec2/)
[![Nginx](https://img.shields.io/badge/Web_Server-Nginx-009639?logo=nginx&logoColor=white)](https://nginx.org/)
[![GitHub](https://img.shields.io/badge/Version_Control-GitHub-181717?logo=github&logoColor=white)](https://github.com/akashvrm0812)

[![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&weight=500&size=20&pause=1000&color=00C7B7&center=true&vCenter=true&width=750&lines=Provisioning+AWS+Infrastructure+with+Terraform;Building+VPC+and+EC2+Resources;Deploying+Nginx+Web+Server;Learning+Cloud+Infrastructure+Automation)](https://git.io/typing-svg)

</div>

---

## Overview

This project demonstrates how to provision AWS cloud infrastructure using **Terraform Infrastructure as Code (IaC)** and deploy an Nginx web server on an Amazon EC2 instance.

It covers fundamental cloud networking concepts, infrastructure provisioning, security group configuration, and web server deployment. The project provides hands-on experience in automating AWS infrastructure through declarative configuration.

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
                  Nginx Server
                       |
                       v
                 Web Browser
```

## Technologies Used

- **Amazon VPC** — Virtual networking environment.
- **Amazon EC2** — Virtual server for hosting the web server.
- **Internet Gateway** — Internet connectivity for the VPC.
- **Route Tables** — Network traffic routing.
- **Security Groups** — Firewall rules for instance traffic.
- **Nginx** — Web server software.
- **Terraform** — Infrastructure as Code.
- **AWS Provider for Terraform** — AWS resource management.
- **Git and GitHub** — Version control and documentation.

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
- **VPC provisioning** for an isolated AWS networking environment.
- **Subnet and routing configuration** for network connectivity.
- **Internet Gateway integration** for internet access where configured.
- **EC2 instance provisioning** to host a web server.
- **Security group configuration** to control network access.
- **Nginx deployment** to serve web content.
- **Repeatable infrastructure management** through declarative code.
- **Terraform validation and formatting** for configuration quality.
- **Version-controlled infrastructure** using Git and GitHub.

## Prerequisites

Before running this project, ensure you have:

- An AWS account.
- Terraform installed.
- AWS CLI installed and configured, or another supported AWS credentials method.
- Appropriate AWS permissions to manage networking and EC2 resources.
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

For better security, prefer temporary credentials through AWS IAM Identity Center or an appropriate role-based workflow. Never hardcode credentials in Terraform files or commit them to GitHub.

### 3. Initialize Terraform

```bash
terraform init
```

This initializes the working directory and downloads the required Terraform providers.

### 4. Format and Validate

Format the Terraform configuration:

```bash
terraform fmt
```

Validate the configuration:

```bash
terraform validate
```

Terraform should report that the configuration is valid if no configuration errors are present.

### 5. Preview Infrastructure Changes

```bash
terraform plan
```

Review the proposed infrastructure changes before applying them.

### 6. Deploy the Infrastructure

```bash
terraform apply
```

Review the execution plan and type `yes` only if you approve the resources Terraform will create or modify.

### 7. Access the Nginx Web Server

After deployment, obtain the EC2 public IP address from the Terraform output or AWS Management Console.

Open this URL in your browser, replacing the placeholder with your instance's public IP:

```text
http://<EC2-PUBLIC-IP>
```

If Nginx is installed and configured correctly, the browser should display the page served by your instance.

Ensure the security group permits HTTP traffic on port `80`, and confirm that the instance has the required network connectivity.

## Security Best Practices

- Never hardcode AWS access keys or secret keys in Terraform files.
- Use least-privilege AWS permissions.
- Restrict SSH access on port `22` to trusted IP addresses.
- Allow HTTP traffic on port `80` only when required.
- Consider HTTPS with TLS for production web applications.
- Exclude `.terraform/`, `*.tfstate*`, and sensitive variable files from Git.
- Store Terraform state securely because it may contain sensitive values.
- Review Terraform plans before applying infrastructure changes.
- Monitor AWS resource usage and remove unused resources to avoid unexpected charges.

## Cleanup

When you have finished testing, remove the resources managed by this Terraform configuration:

```bash
terraform destroy
```

Review the proposed deletions and confirm only if you intend to delete those resources. Do not run this against shared or production infrastructure without authorization.

## Learning Outcomes

Through this project, I practiced:

- Provisioning AWS infrastructure using Terraform.
- Understanding VPCs, subnets, route tables, and Internet Gateways.
- Deploying and managing EC2 instances.
- Configuring security groups and network access.
- Hosting web content using Nginx.
- Formatting and validating Terraform configurations.
- Managing infrastructure code with Git and GitHub.
- Applying cloud security and cleanup practices.

## Future Improvements

- Introduce reusable Terraform modules.
- Add configurable variables and outputs.
- Configure encrypted remote state storage and state locking.
- Enable HTTPS using TLS certificates.
- Add automated Terraform validation through GitHub Actions.
- Improve instance provisioning with cloud-init or user-data scripts.
- Add monitoring and logging for the deployed infrastructure.

## Author

**Akash Verma**


---

