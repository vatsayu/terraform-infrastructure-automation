output "generated_file" {
  description = "Path of the generated configuration file"
  value       = local_file.devops_config.filename
}

output "environment" {
  description = "Configured environment"
  value       = var.environment
}

output "application_name" {
  description = "Configured application name"
  value       = var.application_name
}
