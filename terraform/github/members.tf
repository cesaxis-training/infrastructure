locals {
  admins = ["jserpapinto"]

  members = []
}

resource "github_membership" "admins" {
  for_each = toset(local.admins)

  username = each.value
  role     = "admin"
}

resource "github_membership" "members" {
  for_each = toset(local.members)

  username = each.value
  role     = "member"
}
