# Create a firewall to allow SSH
resource "digitalocean_firewall" "prod" {
  name = "prod-firewall"

  # Inbound rules
  inbound_rule {
    protocol = "tcp"
    port_range = "22"
    source_addresses = ["0.0.0.0/0"]  # Allow SSH from anywhere
  }

  inbound_rule {
    protocol = "tcp"
    port_range = "443"
    source_addresses = ["0.0.0.0/0"]
  }

  inbound_rule {
    protocol = "tcp"
    port_range = "80"
    source_addresses = ["0.0.0.0/0"]  # Allow HTTP from anywhere
  }

  droplet_ids = [digitalocean_droplet.web1.id]
}