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
    config_file = "${pathexpand("~/.docker/config.json")}"
}

}

resource "docker_image" "hello-world" {
  name         = "omegazyadav/hello-world:latest"
  keep_locally = false
}

resource "docker_container" "hello-world" {
  image = docker_image.hello-world.latest
  name  = "hello-world"
  ports {
    internal = 80
    external = 8000
  }
}
