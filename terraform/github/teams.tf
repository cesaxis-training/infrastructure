locals {
  infrastructure_members = [
    "CarolS253",
    "marinadixis",
    "rubenrocha30",
    "filipeazvd",
    "Xlane2096",
    "JMaia02",
    "Jonybullet",
    "petermoody1",
    "Denchik-bool"
  ]
  frontend_members = [
    "abmsaldanha",
    "povoaxis",
    "leonorlacerda02",
    "Niokeres-ballondor"
  ]
  backend_members = [
    "iiscas",
    "noelia1804",
    "MIXI-txt",
    "davidfnatixis",
    "PedroATCosta",
  ]
}

# Infrastructure
resource "github_team" "infrastructure" {
  name        = "team-infrastructure"
  description = "Infrastructure team"
  privacy     = "closed"
}

resource "github_team_members" "infrastructure_members" {
  team_id = github_team.infrastructure.id

  members {
    username = "jserpapinto"
    role     = "maintainer"
  }

  dynamic "members" {
    for_each = toset(local.infrastructure_members)

    content {
      username = members.value
      role     = "member"
    }
  }
}

# Frontend
resource "github_team" "frontend" {
  name        = "team-frontend"
  description = "Frontend team"
  privacy     = "closed"
}

resource "github_team_members" "frontend_members" {
  team_id = github_team.frontend.id

  members {
    username = "jserpapinto"
    role     = "maintainer"
  }

  dynamic "members" {
    for_each = toset(local.frontend_members)

    content {
      username = members.value
      role     = "member"
    }
  }
}

# Backend
resource "github_team" "backend" {
  name        = "team-backend"
  description = "Backend team"
  privacy     = "closed"
}

resource "github_team_members" "backend_members" {
  team_id = github_team.backend.id

  members {
    username = "jserpapinto"
    role     = "maintainer"
  }

  dynamic "members" {
    for_each = toset(local.backend_members)

    content {
      username = members.value
      role     = "member"
    }
  }
}
