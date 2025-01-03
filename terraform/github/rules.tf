# Infrastructure
resource "github_repository_ruleset" "infrastructure_protect_default_branch" {
  name        = "protect-default-branch"
  repository  = github_repository.infrastructure.name
  target      = "branch"
  enforcement = "disabled"

  conditions {
    ref_name {
      include = ["~DEFAULT_BRANCH"]
      exclude = []
    }
  }

  bypass_actors {
    actor_id    = 1 # Owners
    actor_type  = "OrganizationAdmin"
    bypass_mode = "always"
  }

  rules {
    creation                = true
    update                  = true
    deletion                = true
    required_linear_history = true
    non_fast_forward        = true

    pull_request {
      dismiss_stale_reviews_on_push     = false
      require_code_owner_review         = true
      require_last_push_approval        = false
      required_approving_review_count   = 1
      required_review_thread_resolution = false
    }
  }
}

# resource "github_repository_ruleset" "infrastructure_conventional_commits" {
#   name        = "conventional-commits"
#   repository  = github_repository.infrastructure.name
#   target      = "branch"
#   enforcement = "disabled"

#   conditions {
#     ref_name {
#       include = ["refs/heads/**"] # Applies to all branches
#       exclude = []
#     }
#   }

#   rules {
#     commit_message_pattern {
#       name     = "Conventional Commits"
#       pattern  = "^(build|chore|ci|docs|feat|fix|perf|refactor|revert|style|test){1}(\\([\\w\\-\\.]+\\))?(!)?: ([\\w ])+(([\\s\\S])*)"
#       negate   = false
#       operator = "starts_with"
#     }
#   }
# }

# Frontend
resource "github_repository_ruleset" "frontend_require_branch_protection" {
  name        = "require-branch-protection"
  repository  = github_repository.frontend.name
  target      = "branch"
  enforcement = "disabled"

  conditions {
    ref_name {
      include = ["~DEFAULT_BRANCH"]
      exclude = []
    }
  }

  bypass_actors {
    actor_id    = 1 # Owners
    actor_type  = "OrganizationAdmin"
    bypass_mode = "always"
  }

  rules {
    creation                = true
    update                  = true
    deletion                = true
    required_linear_history = true
    non_fast_forward        = true

    pull_request {
      dismiss_stale_reviews_on_push     = false
      require_code_owner_review         = true
      require_last_push_approval        = false
      required_approving_review_count   = 1
      required_review_thread_resolution = false
    }
  }
}

# resource "github_repository_ruleset" "frontend_conventional_commits" {
#   name        = "conventional-commits"
#   repository  = github_repository.frontend.name
#   target      = "branch"
#   enforcement = "disabled"

#   conditions {
#     ref_name {
#       include = ["refs/heads/**"] # Applies to all branches
#       exclude = []
#     }
#   }

#   rules {
#     commit_message_pattern {
#       name     = "Conventional Commits"
#       pattern  = "^(build|chore|ci|docs|feat|fix|perf|refactor|revert|style|test){1}(\\([\\w\\-\\.]+\\))?(!)?: ([\\w ])+(([\\s\\S])*)"
#       negate   = false
#       operator = "starts_with"
#     }
#   }
# }


# Backend
resource "github_repository_ruleset" "backend_require_branch_protection" {
  name        = "require-branch-protection"
  repository  = github_repository.backend.name
  target      = "branch"
  enforcement = "disabled"

  conditions {
    ref_name {
      include = ["~DEFAULT_BRANCH"]
      exclude = []
    }
  }

  bypass_actors {
    actor_id    = 1 # Owners
    actor_type  = "OrganizationAdmin"
    bypass_mode = "always"
  }

  rules {
    creation                = true
    update                  = true
    deletion                = true
    required_linear_history = true
    non_fast_forward        = true

    pull_request {
      dismiss_stale_reviews_on_push     = false
      require_code_owner_review         = true
      require_last_push_approval        = false
      required_approving_review_count   = 1
      required_review_thread_resolution = false
    }
  }
}

# resource "github_repository_ruleset" "backend_conventional_commits" {
#   name        = "conventional-commits"
#   repository  = github_repository.backend.name
#   target      = "branch"
#   enforcement = "disabled"

#   conditions {
#     ref_name {
#       include = ["refs/heads/**"] # Applies to all branches
#       exclude = []
#     }
#   }

#   rules {
#     commit_message_pattern {
#       name     = "Conventional Commits"
#       pattern  = "^(build|chore|ci|docs|feat|fix|perf|refactor|revert|style|test){1}(\\([\\w\\-\\.]+\\))?(!)?: ([\\w ])+(([\\s\\S])*)"
#       negate   = false
#       operator = "starts_with"
#     }
#   }
# }
