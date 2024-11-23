# Infrastructure repository
resource "github_repository" "infrastructure" {
  name        = "infrastructure"
  description = "Infrastructure as Code"

  auto_init  = true
  visibility = "public"

  has_issues = true

  topics = ["terraform", "infrastructure", "ansible", "devops-tools"]
}

resource "github_branch_protection" "infrastructure_main" {
  repository_id = github_repository.infrastructure.node_id

  pattern = "main"

  required_pull_request_reviews {
    required_approving_review_count = 1
  }
}

resource "github_branch_default" "infrastructure_main" {
  repository = github_repository.infrastructure.name
  branch     = "main"
}

# Frontend repository
resource "github_repository" "frontend" {
  name        = "frontend"
  description = "Frontend repository"

  auto_init  = true
  visibility = "public"

  has_issues = true

  topics = ["frontend", "javascript", "devops-tools"]
}

resource "github_branch_protection" "frontend_main" {
  repository_id = github_repository.frontend.node_id

  pattern = "main"

  required_pull_request_reviews {
    required_approving_review_count = 1
  }
}

resource "github_branch_default" "frontend_main" {
  repository = github_repository.frontend.name
  branch     = "main"
}

# Backend repository
resource "github_repository" "backend" {
  name        = "backend"
  description = "Backend repository"

  auto_init  = true
  visibility = "public"

  has_issues = true

  topics = ["backend", "python", "devops-tools"]
}

resource "github_branch_protection" "backend_main" {
  repository_id = github_repository.backend.node_id

  pattern = "main"

  required_pull_request_reviews {
    required_approving_review_count = 1
  }
}

resource "github_branch_default" "backend_main" {
  repository = github_repository.backend.name
  branch     = "main"
}

# Containers repository
resource "github_repository" "containers" {
  name        = "containers"
  description = "Containers repository"

  auto_init  = true
  visibility = "public"

  topics = ["containers", "docker"]
}

resource "github_branch_default" "containers" {
  repository = github_repository.containers.name
  branch     = "master"
}

# .github repository
resource "github_repository" "org_readme" {
  name        = ".github"
  description = "GitHub repository settings"

  auto_init  = true
  visibility = "private"

  topics = ["github"]
}
