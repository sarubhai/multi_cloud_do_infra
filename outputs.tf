# Name: outputs.tf
# Owner: Saurav Mitra
# Description: Outputs the DO Droplet IP
# https://www.terraform.io/docs/configuration/outputs.html


output "web_public_ip_address" {
  value       = digitalocean_droplet.web_droplet.ipv4_address
  description = "The DO Droplet Public IP Address."
}
