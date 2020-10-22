# Learn DevOps!!

## NOMAD - Containerized and Legacy Application Schedular

### Install the noamd

#### On Fedora
```
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf -y install nomad

```
#### On Ubuntu
```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install nomad
```

#### Start the nomad agent in dev mode
```
sudo nomad agent -dev
```

#### Submit the `hello-world.nomad` job to the agent
```
nomad job run hello-world.nomad
```

#### check the status of the job
```
nomad job status hello-world
```

#### Monitor and visaulize the applicaiton status with ui.
```
nomad ui hello-world
```

#### Access the hello-world application on `locahost:8080`.



## ToDo:
Right now I am working on ghost as a blogging platform. With this setup I will be focusing on:-

- [ ] docker-compose
- [ ] K8s Manifest
        - Mysql
        - Ghost Platform
        - Kustomization
        - Secrets(Sops/Vault)
        - PV/PV
        - Liveness/Readiness
        - Node Affinity
        - Ingress, etc.
        - Annotations
- [ ] Helm Charts
        - Resources for ghost platform
        - Adding mysql as a dependency chart
- [ ] CI/CD with Jenkins
- [ ] End To End Automation with JenkinsX (hopefully)
- [ ] Automation with Ansible
- [ ] ELK Stack for Logging
- [ ] Monitering on Grafana Dashboard



