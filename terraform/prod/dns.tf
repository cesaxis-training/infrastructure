resource "digitalocean_domain" "cesaxis" {
  name       = "cesaxis.pt"
  ip_address = "188.166.118.113"  # Usa o IP do Droplet criado
}

resource "digitalocean_record" "cesaxis" {
  domain = digitalocean_domain.cesaxis.name
  type   = "A"
  name   = "@"
  value  = "188.166.118.113"  # Usa o IP do Droplet
  ttl    = 3600
}

resource "digitalocean_record" "api" {
  domain = digitalocean_domain.cesaxis.name
  type   = "A"
  name   = "api"
  value  = "188.166.118.113"  # Usa o IP do Droplet
  ttl    = 3600
}