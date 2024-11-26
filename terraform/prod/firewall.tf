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

   # Inbound Rules
  inbound_rule {
    protocol         = "icmp"
    source_addresses = ["0.0.0.0/0", "::/0"] # Allow pings from any source
  }

  outbound_rule {
    protocol         = "tcp"
    port_range       = "all"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol         = "udp"
    port_range       = "all"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  
   # Outbound Rules
  outbound_rule {
    protocol             = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"] # Allow pings to any destination
  }

  droplet_ids = [digitalocean_droplet.web1.id]
}