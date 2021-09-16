# variables.tf
# Owner: Saurav Mitra
# Description: Variables used by terraform config to create the infrastructure resources for DO
# https://www.terraform.io/docs/configuration/variables.html

# Tags
variable "prefix" {
  description = "This prefix will be included in the name of the resources."
  default     = "do-infra"
}

variable "owner" {
  description = "This owner name tag will be included in the owner of the resources."
  default     = "Saurav Mitra"
}

# DO
variable "region" {
  description = "The DO Region."
  default     = "sgp1"
}

variable "do_size" {
  description = "The DO Instance Size."
  default     = "s-1vcpu-1gb"
}

variable "ssh_public_key" {
  description = "The SSH Public Key."
}
