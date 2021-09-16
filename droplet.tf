# Name: droplet.tf
# Owner: Saurav Mitra
# Description: This terraform config will create a DO Droplet as Nginx Webserver

# SSH Public Key
resource "digitalocean_ssh_key" "ssh_key" {
  name       = "terraform-do"
  public_key = var.ssh_public_key

}

# Droplet
resource "digitalocean_droplet" "web_droplet" {
  name      = "${var.prefix}-web-droplet"
  image     = "ubuntu-20-04-x64"
  region    = var.region
  size      = var.do_size
  ssh_keys  = [digitalocean_ssh_key.ssh_key.fingerprint]
  user_data = file("webserver.sh")
  tags      = ["${var.prefix}-web-droplet"]
}
