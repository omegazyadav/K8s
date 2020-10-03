provider "github" {
  token        = var.github_token
}

resource "github_repository" "terraform" {
  name = "terraform"
  description = "This repo is created by using terraform. "

  visibility = "private"
}

resource "github_repository_collaborator" "terraform" {
  repository = "terraform"
  username   = "dwdraju"
  permission = "admin"
}
