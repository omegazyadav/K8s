resource "docker_image" "hello-world" {
  name         = "omegazyadav/hello-world:latest"
  keep_locally = false
}

resource "docker_container" "hello-world" {
  image = docker_image.hello-world.latest
  name  = var.container_name
  ports {
    internal = 80
    external = 8000
  }
}
