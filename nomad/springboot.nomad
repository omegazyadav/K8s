job "springboot" {
    datacenters = ["dc1"]

    group "mysql-server" {
        count = 1
        task "mysql-server" {
            driver = "docker"
            env {
                MYSQL_ROOT_PASSWORD = "P@ssw0rd"
                MYSQL_DATABASE = "task"
            }
            config {
                image = "mysql:8"
                port_map {
                    db = 3306
                }
            }
            resources {
                memory = 1024
                cpu = 1000
                network {
                    port "db" {
                        static = 3306
                        }
                }
            }
            service {
                name = "db"
                port = "db"
            }
        }
    }

    group "springboot" {
        count = 1

        task "serverapp" {
            driver = "docker"
            config {
                image = "omegazyadav/maven_app:200902-aef691c4"
                port_map {
                    app = 8090
                }
            }
            env{
                SPRING_DATASOURCE_USERNAME= "root"
                SPRING_DATASOURCE_PASSWORD= "P@ssw0rd"
            }
            template{
                data = <<EOH
                        SPRING_DATASOURCE_URL= "jdbc:mysql://{{ range service "db" }}{{ .Address }}:{{ .Port }}{{ end }}/task?allowPublicKeyRetrieval=true"
                    EOH
               destination = "omega" #"mysql-server.env"
               env = true
            }
            resources {
                memory = 1024
                cpu = 1000
            
            network {
                port "app" {
                    static = 8090
                    }
                }
            }  
        }
    }
}

