resource "digitalocean_droplet" "web1" {
   image   = "ubuntu-20-04-x64"
   name    = "web-1"
   region  = "ams3"
   size    = "s-1vcpu-1gb"
   backups = false
  
   vpc_uuid = digitalocean_vpc.prod.id

   ssh_keys = ["0e:29:ea:0f:c3:ac:b6:37:ff:2f:df:0d:53:b6:96:7d"]
}
