variable "buildx_builders" {
  description = <<EOT
Map of buildx_builders, attributes below
Optional:
    - append
    - bootstrap
    - buildkit_config
    - buildkit_flags
    - driver
    - driver_options
    - endpoint
    - name
    - node
    - platform
    - use
    - docker_container (block):
        - cgroup_parent (optional)
        - cpu_period (optional)
        - cpu_quota (optional)
        - cpu_shares (optional)
        - cpuset_cpus (optional)
        - cpuset_mems (optional)
        - default_load (optional)
        - env (optional)
        - image (optional)
        - memory (optional)
        - memory_swap (optional)
        - network (optional)
        - restart_policy (optional)
    - kubernetes (block):
        - annotations (optional)
        - default_load (optional)
        - image (optional)
        - labels (optional)
        - limits (optional, block):
            - cpu (optional)
            - ephemeral_storage (optional)
            - memory (optional)
        - loadbalance (optional)
        - namespace (optional)
        - nodeselector (optional)
        - qemu (optional, block):
            - image (optional)
            - install (optional)
        - replicas (optional)
        - requests (optional, block):
            - cpu (optional)
            - ephemeral_storage (optional)
            - memory (optional)
        - rootless (optional)
        - schedulername (optional)
        - serviceaccount (optional)
        - timeout (optional)
        - tolerations (optional)
    - remote (block):
        - cacert (optional)
        - cert (optional)
        - default_load (optional)
        - key (optional)
        - servername (optional)
EOT

  type = map(object({
    append          = optional(bool)
    bootstrap       = optional(bool)
    buildkit_config = optional(string)
    buildkit_flags  = optional(string)
    driver          = optional(string)
    driver_options  = optional(map(string))
    endpoint        = optional(string)
    name            = optional(string)
    node            = optional(string)
    platform        = optional(list(string))
    use             = optional(bool)
    docker_container = optional(object({
      cgroup_parent  = optional(string)
      cpu_period     = optional(string)
      cpu_quota      = optional(string)
      cpu_shares     = optional(string)
      cpuset_cpus    = optional(string)
      cpuset_mems    = optional(string)
      default_load   = optional(bool)
      env            = optional(map(string))
      image          = optional(string)
      memory         = optional(string)
      memory_swap    = optional(string)
      network        = optional(string)
      restart_policy = optional(string)
    }))
    kubernetes = optional(object({
      annotations  = optional(string)
      default_load = optional(bool)
      image        = optional(string)
      labels       = optional(string)
      limits = optional(object({
        cpu               = optional(string)
        ephemeral_storage = optional(string)
        memory            = optional(string)
      }))
      loadbalance  = optional(string)
      namespace    = optional(string)
      nodeselector = optional(string)
      qemu = optional(object({
        image   = optional(string)
        install = optional(bool)
      }))
      replicas = optional(number)
      requests = optional(object({
        cpu               = optional(string)
        ephemeral_storage = optional(string)
        memory            = optional(string)
      }))
      rootless       = optional(bool)
      schedulername  = optional(string)
      serviceaccount = optional(string)
      timeout        = optional(string)
      tolerations    = optional(string)
    }))
    remote = optional(object({
      cacert       = optional(string)
      cert         = optional(string)
      default_load = optional(bool)
      key          = optional(string)
      servername   = optional(string)
    }))
  }))
}

