variable "my_name" {
  type = string
  description = "Your name to tag AWS resources"
}

variable "region" {
  type = string
  default = "eu-west-1"
}

variable "profile" {
  type = string
  default = "staging"
}

variable "vpn_addresses" {
  type = list(string)
  default = [
    "212.59.70.170/32",
    "209.35.225.10/32"
  ]
}
