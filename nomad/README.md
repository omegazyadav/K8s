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
