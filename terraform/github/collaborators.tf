resource "github_repository_collaborators" "infrastructure" {
  repository = github_repository.infrastructure.name

  user {
    permission = "admin"
    username   = "jserpapinto"
  }

  team {
    permission = "maintain"
    team_id    = github_team.infrastructure.id
  }

  team {
    permission = "push"
    team_id    = github_team.frontend.id
  }

  team {
    permission = "push"
    team_id    = github_team.backend.id
  }
}

resource "github_repository_collaborators" "frontend" {
  repository = github_repository.frontend.name

  user {
    permission = "admin"
    username   = "jserpapinto"
  }

  team {
    permission = "maintain"
    team_id    = github_team.frontend.id
  }

  team {
    permission = "push"
    team_id    = github_team.backend.id
  }

  team {
    permission = "push"
    team_id    = github_team.infrastructure.id
  }
}

resource "github_repository_collaborators" "backend" {
  repository = github_repository.backend.name

  user {
    permission = "admin"
    username   = "jserpapinto"
  }

  team {
    permission = "maintain"
    team_id    = github_team.backend.id
  }

  team {
    permission = "push"
    team_id    = github_team.frontend.id
  }

  team {
    permission = "push"
    team_id    = github_team.infrastructure.id
  }
}
