locals {
  admins = ["jserpapinto"]

  members = [
    "rubenrocha30",
    "marinadixis",
    "davidfnatixis",
    "petermoody1",
    "Jonybullet",
    "JMaia02",
    "filipeazvd",
    "iiscas",
    "noelia1804",
    "Xlane2096",
    "povoaxis",
    "CarolS253",
    "tou",
    "abmsaldanha",
    "leonorlacerda02",
    "Denchik-bool",
    "PedroATCosta",
    "MIXI-txt",
    "Niokeres-ballondor"
  ]
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
