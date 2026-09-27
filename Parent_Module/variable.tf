variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}


variable "vnets" {
  type = map(object({
    name          = string
    rg_key        = string
    address_space = list(string)
    tags          = map(string)
  }))
}


variable "subnets" {
  type = map(object({
    name             = string
    rg_key            = string
    vnet_key          = string
    address_prefixes  = list(string)
  }))
}


variable "nsgs" {
  type = map(object({
    name   = string
    rg_key = string
    tags   = map(string)
  }))
}


variable "public_ips" {
  type = map(object({
    name   = string
    rg_key = string
    tags   = map(string)
  }))
}


variable "nics" {
  type = map(object({
    name          = string
    rg_key        = string
    subnet_key    = string
    public_ip_key = string
  }))
}


variable "vms" {
  type = map(object({
    name           = string
    rg_key         = string
    size           = string
    admin_username = string
    ssh_public_key = string
    nic_key        = string
    tags           = map(string)
  }))
}