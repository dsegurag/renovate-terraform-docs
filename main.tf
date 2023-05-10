terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "15.10.0"
    }
  }
}

data "gitlab_user" "main" {
  username = "main"
}

output "gitlab_user" {
  description = "The ID of this resource."
  value       = data.gitlab_user.main.id
}
