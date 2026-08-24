# Terraform Infrastructure Automation

A beginner-friendly Infrastructure as Code project demonstrating Terraform configuration, variables, outputs, planning, provisioning, state management, and cleanup without requiring a paid cloud account.

## Tech Stack

- Terraform
- HCL
- Terraform Local Provider
- Git
- GitHub
- Linux
- Kali Linux

## Project Objective

The objective of this project is to understand the Terraform Infrastructure as Code workflow in a zero-cost local environment.

The project demonstrates how Terraform can:

- Define infrastructure as code
- Use variables for configuration
- Generate outputs
- Preview infrastructure changes with `terraform plan`
- Provision resources with `terraform apply`
- Track resources using Terraform state
- Remove managed resources with `terraform destroy`

## Project Architecture

```text
Terraform Configuration
        |
        +---- main.tf
        +---- variables.tf
        +---- outputs.tf
        +---- terraform.tfvars.example
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
Local Terraform Resource
        |
        v
generated/devops-config.txt
        |
        v
terraform output
        |
        v
terraform destroy
```

## Project Structure

```text
terraform-infrastructure-automation/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md
```

## Terraform Configuration

The project uses the Terraform Local Provider to create a configuration file locally.

The resource is defined in `main.tf`:

```hcl
resource "local_file" "devops_config" {
  filename = "${path.module}/generated/devops-config.txt"

  content = <<-EOT
    DevOps Terraform Infrastructure Project

    Environment: ${var.environment}
    Application: ${var.application_name}
    Owner: ${var.owner}
  EOT
}
```

## Variables

The project uses variables for reusable configuration.

Defined variables:

```text
environment
application_name
owner
```

Default values:

```text
Environment: development
Application: devops-demo
Owner: devops-lab
```

Example variable configuration is provided in:

```text
terraform.tfvars.example
```

## Terraform Workflow

### 1. Initialize Terraform

```bash
terraform init
```

Expected result:

```text
Terraform has been successfully initialized!
```

### 2. Format Configuration

```bash
terraform fmt
```

### 3. Validate Configuration

```bash
terraform validate
```

Expected output:

```text
Success! The configuration is valid.
```

### 4. Create an Execution Plan

```bash
terraform plan
```

Example:

```text
Terraform will perform the following actions:

# local_file.devops_config will be created
+ create

Plan: 1 to add, 0 to change, 0 to destroy.
```

### 5. Provision the Resource

```bash
terraform apply
```

Enter:

```text
yes
```

Expected result:

```text
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

### 6. Verify the Generated Resource

```bash
cat generated/devops-config.txt
```

Output:

```text
DevOps Terraform Infrastructure Project

Environment: development
Application: devops-demo
Owner: devops-lab
```

### 7. View Terraform Outputs

```bash
terraform output
```

Example:

```text
application_name = "devops-demo"
environment = "development"
generated_file = "./generated/devops-config.txt"
```

### 8. Check Terraform State

```bash
terraform state list
```

Expected:

```text
local_file.devops_config
```

### 9. Destroy the Resource

```bash
terraform destroy
```

Enter:

```text
yes
```

Expected result:

```text
Destroy complete! Resources: 1 destroyed.
```

## Infrastructure as Code Concepts Practiced

- Declarative configuration
- Variables
- Resources
- Outputs
- Terraform plan
- Terraform apply
- Terraform state
- Terraform destroy
- Repeatable provisioning
- Infrastructure cleanup

## Testing Evidence

The project was successfully tested through the complete Terraform lifecycle:

```text
terraform init       ✓
terraform fmt        ✓
terraform validate   ✓
terraform plan       ✓
terraform apply      ✓
terraform output     ✓
terraform state list ✓
terraform destroy    ✓
```

## Cost and Security

This implementation uses the Terraform Local Provider and does not create AWS infrastructure.

- No AWS account is required
- No payment card is required
- No cloud resources are created
- No AWS charges are generated
- No credentials are stored in the repository

The `.gitignore` file prevents Terraform state files and generated files from being committed accidentally.

## Current Scope

This project focuses on Terraform Infrastructure as Code fundamentals using a local provider.

AWS resources such as VPCs, subnets, security groups, and EC2 instances are not included because this implementation intentionally avoids requiring a paid cloud account or payment method.

## Future Improvements

- AWS provider integration
- AWS VPC provisioning
- EC2 infrastructure provisioning
- Security group configuration
- Terraform remote state
- CI validation using GitHub Actions
- Automated infrastructure deployment
- Infrastructure testing

## Project Outcome

This project demonstrates practical Terraform Infrastructure as Code skills, including reusable configuration, variables, outputs, resource lifecycle management, planning, provisioning, state inspection, and cleanup.
