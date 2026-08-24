terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "devops_config" {
  filename = "${path.module}/generated/devops-config.txt"

  content = <<-EOT
    DevOps Terraform Infrastructure Project

    Environment: ${var.environment}
    Application: ${var.application_name}
    Owner: ${var.owner}
  EOT
}
