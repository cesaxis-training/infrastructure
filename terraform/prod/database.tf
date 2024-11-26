resource "digitalocean_database_user" "user-example" {
  cluster_id = digitalocean_database_cluster.prod.id
  name       = "cesaxis_user"
}


# Create the MySQL Database Cluster
resource "digitalocean_database_cluster" "prod" {
  name       = "cesaxis-mysql"
  engine     = "mysql"
  version    = "8"
  size       = "db-s-1vcpu-1gb"
  region     = "ams3"
  node_count = 1

}

# Create the Database in the Cluster (correct resource type)
resource "digitalocean_database_db" "prod_db" {
  cluster_id = digitalocean_database_cluster.prod.id
  name       = "cesaxis_db"
}

