#increase log verbosity
log_level = "DEBUG"
# Setup data dir
data_dir = "/tmp/client2"
# Give the agent a unique name. Defaults to hostname
name = "client2"
# Enable the client
client {
    enabled = true
    # For demo assume we are talking to server1. For production,
    # this should be like "nomad.service.consul:4647" and a system
    # like Consul used for service discovery.
    servers = ["192.168.1.16:4647"]
}
# Modify our port to avoid a collision with server1
ports {
    http = 6666
}
# Disable the dangling container cleanup to avoid interaction with other clients
plugin "docker" {
  config {
    gc {
      dangling_containers {
        enabled = false
      }
    }
  }
}
