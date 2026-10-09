# AWS VPC, EC2 & NGINX Deployment using Terraform

[![AWS](https://img.shields.io/badge/AWS-Cloud%20Platform-FF9900?logo=amazonaws&logoColor=white)](https://aws.amazon.com/)
[![Terraform](https://img.shields.io/badge/Terraform-Infrastructure%20as%20Code-844FBA?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![NGINX](https://img.shields.io/badge/NGINX-Web%20Server-009639?logo=nginx&logoColor=white)](https://nginx.org/)
[![GitHub](https://img.shields.io/badge/GitHub-Project-181717?logo=github&logoColor=white)](https://github.com/akashvrm0812/aws-vpc-ec2-nginx)

## 📌 Overview

This project demonstrates the provisioning of AWS cloud infrastructure using **Terraform**, an Infrastructure as Code (IaC) tool. It focuses on creating network infrastructure, deploying an Amazon EC2 instance, and hosting a web server using NGINX.

The goal of this hands-on project is to practice automating cloud resource provisioning, understanding AWS networking, and managing infrastructure through version-controlled configuration files.

## 🎯 Project Objectives

- Automate AWS infrastructure provisioning using Terraform.
- Configure an Amazon Virtual Private Cloud (VPC).
- Deploy an Amazon EC2 instance.
- Configure networking and security rules for the application.
- Install and run an NGINX web server.
- Practice infrastructure lifecycle management using Terraform.
- Maintain project configuration and documentation using Git and GitHub.

## 🏗️ Architecture

The general deployment workflow is illustrated below.

```text
              Developer
                  |
                  v
        Terraform Configuration
                  |
                  v
            AWS Provider
                  |
                  v
              Amazon VPC
                  |
                  v
       Networking & Security
                  |
                  v
            EC2 Instance
                  |
                  v
           NGINX Web Server
                  |
                  v
             Web Browser
```

**Architecture note:** The diagram represents the general workflow. The actual network components and connectivity depend on the resources defined in the Terraform configuration.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Amazon Web Services (AWS) | Cloud infrastructure |
| Terraform | Infrastructure as Code |
| Amazon VPC | Virtual network |
| Amazon EC2 | Compute instance |
| NGINX | Web server |
| Git | Version control |
| GitHub | Repository hosting |
| Visual Studio Code | Development environment |

## 📁 Project Structure

```text
aws-vpc-ec2-nginx/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md
```

| File | Description |
|---|---|
| `main.tf` | Defines the primary infrastructure resources |
| `provider.tf` | Configures the Terraform AWS provider |
| `variables.tf` | Declares configurable input variables |
| `outputs.tf` | Defines useful deployment outputs |
| `terraform.tfvars.example` | Provides an example of variable values |
| `.gitignore` | Excludes generated files and sensitive local files |
| `README.md` | Documents the project and deployment workflow |

## ⚙️ Prerequisites

Before deploying the infrastructure, ensure you have:

- An AWS account.
- Terraform installed.
- AWS CLI installed.
- Git installed.
- Visual Studio Code or another code editor.
- Appropriate AWS IAM permissions to create the required resources.

Verify your installations:

```bash
terraform -version
aws --version
git --version
```

Verify your AWS authentication:

```bash
aws sts get-caller-identity
```

Use secure AWS authentication, such as an IAM role or an appropriately configured local profile. Never commit AWS access keys or secret credentials to GitHub.

## 🚀 Deployment Guide

### 1. Clone the repository

```bash
git clone https://github.com/akashvrm0812/aws-vpc-ec2-nginx.git
cd aws-vpc-ec2-nginx
```

### 2. Configure AWS credentials

For a local development environment, configure your AWS CLI profile if needed:

```bash
aws configure
```

Use the appropriate profile and region for your Terraform configuration. Avoid hardcoding credentials in Terraform files.

### 3. Configure Terraform variables

Review `variables.tf` and `terraform.tfvars.example`.

If your project requires a `terraform.tfvars` file, create a local copy of the example.

**Windows PowerShell:**

```powershell
Copy-Item terraform.tfvars.example terraform.tfvars
```

**Linux/macOS:**

```bash
cp terraform.tfvars.example terraform.tfvars
```

Update the values according to your configuration. Keep real secret values and local `.tfvars` files out of version control.

### 4. Initialize Terraform

```bash
terraform init
```

This initializes the working directory and downloads the required provider plugins.

### 5. Validate the configuration

```bash
terraform validate
```

This checks the Terraform configuration for syntax and internal consistency.

### 6. Review the execution plan

```bash
terraform plan
```

Review the proposed resource changes before applying them.

### 7. Deploy the infrastructure

```bash
terraform apply
```

Inspect the plan and confirm the operation when prompted.

### 8. Verify the deployment

After Terraform completes successfully:

- Verify the created resources in the AWS Management Console.
- Check the EC2 instance state.
- Review any Terraform outputs defined in `outputs.tf`.
- If the instance has a public endpoint and HTTP access is configured, open that endpoint in a browser to test NGINX.

The exact resources and output values depend on the project configuration.

## 🔄 Terraform Workflow

This project follows the standard Terraform workflow:

```text
Write Configuration
        |
        v
terraform init
        |
        v
terraform validate
        |
        v
terraform plan
        |
        v
terraform apply
        |
        v
Verify Resources
        |
        v
terraform destroy
```

## 🔐 Security Best Practices

- Never commit AWS access keys, secret keys, or private SSH keys.
- Exclude `.terraform/` and Terraform state files from Git.
- Keep real `terraform.tfvars` files out of version control.
- Follow the principle of least privilege when assigning IAM permissions.
- Restrict SSH access to trusted IP addresses.
- Expose only the ports required by the application.
- Review security group rules before deploying infrastructure.
- Monitor AWS resource usage and associated costs.
- Protect Terraform state because it may contain sensitive information.

## 🧹 Cleanup

To remove the resources managed by this Terraform configuration when they are no longer needed, run:

```bash
terraform destroy
```

Review the proposed deletions and confirm only when you intend to remove those resources.

**Important:** Run this command from the correct project directory and Terraform workspace. Back up or preserve any state required for infrastructure management.

## 📚 Key Learnings

This hands-on project provided practice with:

- Infrastructure as Code using Terraform.
- AWS provider configuration and resource provisioning.
- AWS networking fundamentals.
- EC2 instance deployment.
- Web server hosting with NGINX.
- Terraform initialization, validation, planning, and application.
- Git-based version control and GitHub documentation.

## 🚀 Future Enhancements

Potential improvements for this project include:

- Refactoring infrastructure into reusable Terraform modules.
- Configuring remote Terraform state storage with state locking.
- Adding automated formatting and validation checks through GitHub Actions.
- Improving network segmentation and security group restrictions.
- Automating NGINX installation and configuration.
- Adding architecture diagrams and deployment evidence.
- Implementing automated infrastructure testing.

## 👨‍💻 Author

**Akash**

*This project was created for hands-on learning 

If you find this project useful, feel free to explore the repository.
