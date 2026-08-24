Terraform Infrastructure Automation

A beginner-friendly Infrastructure as Code project demonstrating Terraform configuration, variables, outputs, planning, provisioning, state management, and cleanup without requiring a paid cloud account.

Tech Stack
Terraform

HCL

Terraform Local Provider

Git

GitHub

Linux

Kali Linux

Project Objective
The objective of this project is to understand the Terraform Infrastructure as Code workflow in a zero-cost local environment.

The project demonstrates how Terraform can:

Define infrastructure as code

Use variables for configuration

Generate outputs

Preview infrastructure changes with terraform plan

Provision resources with terraform apply

Track resources using Terraform state

Remove managed resources with terraform destroy

Project Architecture
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
Project Structure
terraform-infrastructure-automation/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md
Terraform Configuration
The project uses the Terraform Local Provider to create a configuration file locally.

The resource is defined in main.tf:

resource "local_file" "devops_config" {
  filename = "${path.module}/generated/devops-config.txt"

  content = <<-EOT
    DevOps Terraform Infrastructure Project

    Environment: ${var.environment}
    Application: ${var.application_name}
    Owner: ${var.owner}
  EOT
}
Variables
The project uses variables for reusable configuration.

Defined variables:

environment
application_name
owner
Default values:

Environment: development
Application: devops-demo
Owner: devops-lab
Example variable configuration is provided in:

terraform.tfvars.example
Terraform Workflow
1. Initialize Terraform
terraform init
Terraform downloads and initializes the required Local Provider.

Expected result:

Terraform has been successfully initialized!
2. Format Configuration
terraform fmt
Terraform formats the configuration files according to standard Terraform formatting.

3. Validate Configuration
terraform validate
Expected output:

Success! The configuration is valid.
4. Create an Execution Plan
terraform plan
Terraform analyzes the configuration and shows the changes that would be made.

Example:

Terraform will perform the following actions:

# local_file.devops_config will be created
+ create

Plan: 1 to add, 0 to change, 0 to destroy.
5. Provision the Resource
terraform apply
Terraform asks for confirmation:

Do you want to perform these actions?
Only 'yes' will be accepted to approve.
Enter:

yes
Expected result:

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
6. Verify the Generated Resource
Terraform creates:

generated/devops-config.txt
Check the file:

cat generated/devops-config.txt
Output:

DevOps Terraform Infrastructure Project

Environment: development
Application: devops-demo
Owner: devops-lab
7. View Terraform Outputs
terraform output
Example:

application_name = "devops-demo"
environment = "development"
generated_file = "./generated/devops-config.txt"
8. Check Terraform State
terraform state list
Expected:

local_file.devops_config
Terraform state allows Terraform to track the resources it manages.

9. Destroy the Resource
terraform destroy
Terraform displays the resource that will be removed:

Plan: 0 to add, 0 to change, 1 to destroy.
Enter:

yes
Expected result:

Destroy complete! Resources: 1 destroyed.
The generated file is then removed.

Infrastructure as Code Concepts Practiced
Declarative Configuration
Terraform configuration describes the desired state rather than providing a sequence of manual commands.

Variables
Variables allow configuration values to be reused without changing the main resource definition.

Resources
Terraform resources represent infrastructure components managed by Terraform.

Outputs
Outputs expose useful values from the Terraform configuration.

Plan
terraform plan previews changes before they are applied.

Apply
terraform apply creates or updates resources according to the configuration.

State
Terraform state tracks resources managed by Terraform.

Destroy
terraform destroy removes resources managed by the Terraform configuration.

Testing Evidence
The project was successfully tested through the complete Terraform lifecycle:

terraform init       ✓
terraform fmt        ✓
terraform validate   ✓
terraform plan       ✓
terraform apply      ✓
terraform output     ✓
terraform state list ✓
terraform destroy    ✓
Cost and Security
This implementation uses the Terraform Local Provider and does not create AWS infrastructure.

Therefore:

No AWS account is required

No payment card is required

No cloud resources are created

No AWS charges are generated

No credentials are stored in the repository

The .gitignore file also prevents Terraform state files and generated files from being committed accidentally.

Current Scope
This project focuses on Terraform Infrastructure as Code fundamentals using a local provider.

AWS resources such as VPCs, subnets, security groups, and EC2 instances are not included because this implementation intentionally avoids requiring a paid cloud account or payment method.

Future Improvements
AWS provider integration

AWS VPC provisioning

EC2 infrastructure provisioning

Security group configuration

Terraform remote state

CI validation using GitHub Actions

Automated infrastructure deployment

Infrastructure testing

Project Outcome
This project demonstrates practical Terraform Infrastructure as Code skills, including reusable configuration, variables, outputs, resource lifecycle management, planning, provisioning, state inspection, and cleanup.

After both files are filled, run:

cat terraform.tfvars.example
and:

head -20 README.md
Then we'll do a final terraform validate and commit + push Project 2.


give me copyable content inside a file 

Done. I created the files for you:

Download Project 2 README.md

Download terraform.tfvars.example

For the README, you can directly replace your empty README.md with the downloaded file.

For terraform.tfvars.example, replace the empty file with the downloaded one.

Then we'll do the final check and commit/push Project 2. 


project2-README.md
Document


project2-README.md


Terraform Infrastructure Automation
A beginner-friendly Infrastructure as Code project demonstrating Terraform configuration, variables, outputs, planning, provisioning, state management, and cleanup without requiring a paid cloud account.

Tech Stack
Terraform

HCL

Terraform Local Provider

Git

GitHub

Linux

Kali Linux

Project Objective
The objective of this project is to understand the Terraform Infrastructure as Code workflow in a zero-cost local environment.

The project demonstrates how Terraform can:

Define infrastructure as code

Use variables for configuration

Generate outputs

Preview infrastructure changes with terraform plan

Provision resources with terraform apply

Track resources using Terraform state

Remove managed resources with terraform destroy

Project Architecture
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
Project Structure
terraform-infrastructure-automation/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md
Terraform Configuration
The project uses the Terraform Local Provider to create a configuration file locally.

The resource is defined in main.tf:

resource "local_file" "devops_config" {
  filename = "${path.module}/generated/devops-config.txt"

  content = <<-EOT
    DevOps Terraform Infrastructure Project

    Environment: ${var.environment}
    Application: ${var.application_name}
    Owner: ${var.owner}
  EOT
}
Variables
The project uses variables for reusable configuration.

Defined variables:

environment
application_name
owner
Default values:

Environment: development
Application: devops-demo
Owner: devops-lab
Example variable configuration is provided in:

terraform.tfvars.example
Terraform Workflow
1. Initialize Terraform
terraform init
Expected result:

Terraform has been successfully initialized!
2. Format Configuration
terraform fmt
3. Validate Configuration
terraform validate
Expected output:

Success! The configuration is valid.
4. Create an Execution Plan
terraform plan
Example:

Terraform will perform the following actions:

# local_file.devops_config will be created
+ create

Plan: 1 to add, 0 to change, 0 to destroy.
5. Provision the Resource
terraform apply
Enter:

yes
Expected result:

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
6. Verify the Generated Resource
cat generated/devops-config.txt
Output:

DevOps Terraform Infrastructure Project

Environment: development
Application: devops-demo
Owner: devops-lab
7. View Terraform Outputs
terraform output
Example:

application_name = "devops-demo"
environment = "development"
generated_file = "./generated/devops-config.txt"
8. Check Terraform State
terraform state list
Expected:

local_file.devops_config
9. Destroy the Resource
terraform destroy
Enter:

yes
Expected result:

Destroy complete! Resources: 1 destroyed.
Infrastructure as Code Concepts Practiced
Declarative configuration

Variables

Resources

Outputs

Terraform plan

Terraform apply

Terraform state

Terraform destroy

Repeatable provisioning

Infrastructure cleanup

Testing Evidence
The project was successfully tested through the complete Terraform lifecycle:

terraform init       ✓
terraform fmt        ✓
terraform validate   ✓
terraform plan       ✓
terraform apply      ✓
terraform output     ✓
terraform state list ✓
terraform destroy    ✓
Cost and Security
This implementation uses the Terraform Local Provider and does not create AWS infrastructure.

No AWS account is required

No payment card is required

No cloud resources are created

No AWS charges are generated

No credentials are stored in the repository

The .gitignore file prevents Terraform state files and generated files from being committed accidentally.

Current Scope
This project focuses on Terraform Infrastructure as Code fundamentals using a local provider.

AWS resources such as VPCs, subnets, security groups, and EC2 instances are not included because this implementation intentionally avoids requiring a paid cloud account or payment method.

Future Improvements
AWS provider integration

AWS VPC provisioning

EC2 infrastructure provisioning

Security group configuration

Terraform remote state

CI validation using GitHub Actions

Automated infrastructure deployment

Infrastructure testing

Project Outcome
This project demonstrates practical Terraform Infrastructure as Code skills, including reusable configuration, variables, outputs, resource lifecycle management, planning, provisioning, state inspection, and cleanup.

