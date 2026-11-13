output "buildx_builders_id" {
  description = "Map of id values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.id }
}
output "buildx_builders_append" {
  description = "Map of append values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.append }
}
output "buildx_builders_bootstrap" {
  description = "Map of bootstrap values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.bootstrap }
}
output "buildx_builders_buildkit_config" {
  description = "Map of buildkit_config values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.buildkit_config }
}
output "buildx_builders_buildkit_flags" {
  description = "Map of buildkit_flags values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.buildkit_flags }
}
output "buildx_builders_docker_container" {
  description = "Map of docker_container values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => one(v.docker_container) }
}
output "buildx_builders_driver" {
  description = "Map of driver values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.driver }
}
output "buildx_builders_driver_options" {
  description = "Map of driver_options values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.driver_options }
}
output "buildx_builders_endpoint" {
  description = "Map of endpoint values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.endpoint }
}
output "buildx_builders_kubernetes" {
  description = "Map of kubernetes values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => one(v.kubernetes) }
}
output "buildx_builders_name" {
  description = "Map of name values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.name }
}
output "buildx_builders_node" {
  description = "Map of node values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.node }
}
output "buildx_builders_platform" {
  description = "Map of platform values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.platform }
}
output "buildx_builders_remote" {
  description = "Map of remote values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => one(v.remote) }
}
output "buildx_builders_use" {
  description = "Map of use values across all buildx_builders, keyed the same as var.buildx_builders"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.use }
}

