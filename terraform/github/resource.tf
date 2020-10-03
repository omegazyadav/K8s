# Run the command with 
# terraform apply   -var "github_token='YOUR_GITHUB_TOKEN_HERE'"   -var "username='GITHUB_USERNAME'"


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
  username   = var.username
  permission = "admin"
}
