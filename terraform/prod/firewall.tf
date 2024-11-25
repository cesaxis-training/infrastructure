# Create a firewall to allow SSH and HTTP/HTTPS
resource "digitalocean_firewall" "prod" {
  name = "prod-firewall"

  # Inbound rules
  inbound_rule {
    protocol = "tcp"
    port_range = "22"
    source_addresses = ["0.0.0.0/0"]  # Allow SSH from anywhere
  }

  droplet_ids = [digitalocean_droplet.prod.id]
}