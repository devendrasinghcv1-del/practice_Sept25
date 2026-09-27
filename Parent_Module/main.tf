module "rg" {
    source = "../Child_Module/Resource_group"
    resource_groups = var.resource_groups
}

module "vnet" {
    source = "../Child_Module/Vnet"
    vnets = var.vnets
}

module "subnet" {
    source = "../Child_Module/Subnet"
    subnets = var.subnets
}

module "nsg" {
    source = "../Child_Module/NSG"
    nsgs = var.nsgs
}

module "public_ip" {
    source = "../Child_Module/PublicIP"
    public_ips = var.public_ips
}

module "nic" {
    source = "../Child_Module/NIC"
    nics = var.nics
}

module "vm" {
    source = "../Child_Module/VM"
    vms = var.vms
}

