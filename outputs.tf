output "buildx_builders_id" {
  description = "Map of id values across all buildx_builders, keyed the same as var.buildx_builders except keys with no id are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "buildx_builders_append" {
  description = "Map of append values across all buildx_builders, keyed the same as var.buildx_builders except keys with no append are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.append if v.append != null }
}
output "buildx_builders_bootstrap" {
  description = "Map of bootstrap values across all buildx_builders, keyed the same as var.buildx_builders except keys with no bootstrap are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.bootstrap if v.bootstrap != null }
}
output "buildx_builders_buildkit_config" {
  description = "Map of buildkit_config values across all buildx_builders, keyed the same as var.buildx_builders except keys with no buildkit_config are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.buildkit_config if v.buildkit_config != null && length(v.buildkit_config) > 0 }
}
output "buildx_builders_buildkit_flags" {
  description = "Map of buildkit_flags values across all buildx_builders, keyed the same as var.buildx_builders except keys with no buildkit_flags are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.buildkit_flags if v.buildkit_flags != null && length(v.buildkit_flags) > 0 }
}
output "buildx_builders_docker_container" {
  description = "Map of docker_container values across all buildx_builders, keyed the same as var.buildx_builders except keys with no docker_container are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => one(v.docker_container) if v.docker_container != null && length(v.docker_container) > 0 }
}
output "buildx_builders_driver" {
  description = "Map of driver values across all buildx_builders, keyed the same as var.buildx_builders except keys with no driver are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.driver if v.driver != null && length(v.driver) > 0 }
}
output "buildx_builders_driver_options" {
  description = "Map of driver_options values across all buildx_builders, keyed the same as var.buildx_builders except keys with no driver_options are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.driver_options if v.driver_options != null && length(v.driver_options) > 0 }
}
output "buildx_builders_endpoint" {
  description = "Map of endpoint values across all buildx_builders, keyed the same as var.buildx_builders except keys with no endpoint are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "buildx_builders_kubernetes" {
  description = "Map of kubernetes values across all buildx_builders, keyed the same as var.buildx_builders except keys with no kubernetes are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => one(v.kubernetes) if v.kubernetes != null && length(v.kubernetes) > 0 }
}
output "buildx_builders_name" {
  description = "Map of name values across all buildx_builders, keyed the same as var.buildx_builders except keys with no name are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.name if v.name != null && length(v.name) > 0 }
}
output "buildx_builders_node" {
  description = "Map of node values across all buildx_builders, keyed the same as var.buildx_builders except keys with no node are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.node if v.node != null && length(v.node) > 0 }
}
output "buildx_builders_platform" {
  description = "Map of platform values across all buildx_builders, keyed the same as var.buildx_builders except keys with no platform are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.platform if v.platform != null && length(v.platform) > 0 }
}
output "buildx_builders_remote" {
  description = "Map of remote values across all buildx_builders, keyed the same as var.buildx_builders except keys with no remote are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => one(v.remote) if v.remote != null && length(v.remote) > 0 }
}
output "buildx_builders_use" {
  description = "Map of use values across all buildx_builders, keyed the same as var.buildx_builders except keys with no use are omitted"
  value       = { for k, v in docker_buildx_builder.buildx_builders : k => v.use if v.use != null }
}

