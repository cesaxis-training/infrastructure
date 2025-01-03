resource "digitalocean_domain" "cesaxis" {
  name       = "cesaxis.pt"
  ip_address = digitalocean_droplet.web1.ipv4_address  # Usa o IP do Droplet criado
}

resource "digitalocean_record" "cesaxis" {
  domain = digitalocean_domain.cesaxis.name
  type   = "A"
  name   = "@"
  value  = digitalocean_droplet.web1.ipv4_address  # Usa o IP do Droplet
  ttl    = 3600
}

resource "digitalocean_record" "api" {
  domain = digitalocean_domain.cesaxis.name
  type   = "A"
  name   = "api"
  value  = digitalocean_droplet.web1.ipv4_address  # Usa o IP do Droplet
  ttl    = 3600
}

