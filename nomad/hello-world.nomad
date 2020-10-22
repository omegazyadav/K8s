job "hello-world" {

  datacenters = ["dc1"]

  type = "service"

  update {
      stagger = "10s"
      max_parallel = 1
  }

  group "app" {
    count = 1

    restart {
      attempts = 2
      interval = "15m"
      delay = "15s"
      mode = "delay"
    }
    
   task "example-task" {

      driver = "docker"
      
      config {
        image = "omegazyadav/hello-world"

        auth {
          username = "YOUR_DOCKERHUB_USERNAME"
          password = "YOUR_DOCKERHUB_PASSWORD"
        }

        port_map = {
            http = 80
        }
        }

      resources {
        network {
          mbits = 10

          port "http" {
            static = "8080"
          }
         }
        }
       }
      }
    }
