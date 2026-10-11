resource "docker_buildx_builder" "buildx_builders" {
  for_each = var.buildx_builders

  append          = each.value.append
  bootstrap       = each.value.bootstrap
  buildkit_config = each.value.buildkit_config
  buildkit_flags  = each.value.buildkit_flags
  driver          = each.value.driver
  driver_options  = each.value.driver_options
  endpoint        = each.value.endpoint
  name            = each.value.name
  node            = each.value.node
  platform        = each.value.platform
  use             = each.value.use

  dynamic "docker_container" {
    for_each = each.value.docker_container != null ? [each.value.docker_container] : []
    content {
      cgroup_parent  = docker_container.value.cgroup_parent
      cpu_period     = docker_container.value.cpu_period
      cpu_quota      = docker_container.value.cpu_quota
      cpu_shares     = docker_container.value.cpu_shares
      cpuset_cpus    = docker_container.value.cpuset_cpus
      cpuset_mems    = docker_container.value.cpuset_mems
      default_load   = docker_container.value.default_load
      env            = docker_container.value.env
      image          = docker_container.value.image
      memory         = docker_container.value.memory
      memory_swap    = docker_container.value.memory_swap
      network        = docker_container.value.network
      restart_policy = docker_container.value.restart_policy
    }
  }

  dynamic "kubernetes" {
    for_each = each.value.kubernetes != null ? [each.value.kubernetes] : []
    content {
      annotations  = kubernetes.value.annotations
      default_load = kubernetes.value.default_load
      image        = kubernetes.value.image
      labels       = kubernetes.value.labels
      dynamic "limits" {
        for_each = kubernetes.value.limits != null ? [kubernetes.value.limits] : []
        content {
          cpu               = limits.value.cpu
          ephemeral_storage = limits.value.ephemeral_storage
          memory            = limits.value.memory
        }
      }
      loadbalance  = kubernetes.value.loadbalance
      namespace    = kubernetes.value.namespace
      nodeselector = kubernetes.value.nodeselector
      dynamic "qemu" {
        for_each = kubernetes.value.qemu != null ? [kubernetes.value.qemu] : []
        content {
          image   = qemu.value.image
          install = qemu.value.install
        }
      }
      replicas = kubernetes.value.replicas
      dynamic "requests" {
        for_each = kubernetes.value.requests != null ? [kubernetes.value.requests] : []
        content {
          cpu               = requests.value.cpu
          ephemeral_storage = requests.value.ephemeral_storage
          memory            = requests.value.memory
        }
      }
      rootless       = kubernetes.value.rootless
      schedulername  = kubernetes.value.schedulername
      serviceaccount = kubernetes.value.serviceaccount
      timeout        = kubernetes.value.timeout
      tolerations    = kubernetes.value.tolerations
    }
  }

  dynamic "remote" {
    for_each = each.value.remote != null ? [each.value.remote] : []
    content {
      cacert       = remote.value.cacert
      cert         = remote.value.cert
      default_load = remote.value.default_load
      key          = remote.value.key
      servername   = remote.value.servername
    }
  }
}

