variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "development"
}

variable "application_name" {
  description = "Application name"
  type        = string
  default     = "devops-demo"
}

variable "owner" {
  description = "Project owner"
  type        = string
  default     = "devops-lab"
}
