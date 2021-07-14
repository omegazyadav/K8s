terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
  }
}

provider "docker" {
  registry_auth {
    address="https://index.docker.io/v1/"
    config_file = pathexpand("~/.docker/config.json")
    }
}
