resource_groups = {

  rg1 = {
    name     = "rg-dev-01"
    location = "East US"

    tags = {
      environment = "dev"
      project     = "terraform-vm"
    }
  }

  rg2 = {
    name     = "rg-dev-02"
    location = "West US"

    tags = {
      environment = "dev"
      project     = "terraform-vm"
    }
  }
}


vnets = {

  vnet1 = {
    name          = "vnet-dev-01"
    rg_key        = "rg1"
    address_space = ["10.0.0.0/16"]

    tags = {
      environment = "dev"
    }
  }

  vnet2 = {
    name          = "vnet-dev-02"
    rg_key        = "rg2"
    address_space = ["10.1.0.0/16"]

    tags = {
      environment = "dev"
    }
  }
}


subnets = {

  subnet1 = {
    name             = "subnet-dev-01"
    rg_key           = "rg1"
    vnet_key         = "vnet1"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet2 = {
    name             = "subnet-dev-02"
    rg_key           = "rg2"
    vnet_key         = "vnet2"
    address_prefixes = ["10.1.1.0/24"]
  }
}


nsgs = {

  nsg1 = {
    name   = "nsg-dev-01"
    rg_key = "rg1"

    tags = {
      environment = "dev"
    }
  }

  nsg2 = {
    name   = "nsg-dev-02"
    rg_key = "rg2"

    tags = {
      environment = "dev"
    }
  }
}


public_ips = {

  pip1 = {
    name   = "pip-dev-01"
    rg_key = "rg1"

    tags = {
      environment = "dev"
    }
  }

  pip2 = {
    name   = "pip-dev-02"
    rg_key = "rg2"

    tags = {
      environment = "dev"
    }
  }
}


nics = {

  nic1 = {
    name          = "nic-dev-01"
    rg_key        = "rg1"
    subnet_key    = "subnet1"
    public_ip_key = "pip1"
  }

  nic2 = {
    name          = "nic-dev-02"
    rg_key        = "rg2"
    subnet_key    = "subnet2"
    public_ip_key = "pip2"
  }
}


vms = {

  vm1 = {
    name           = "vm-dev-01"
    rg_key         = "rg1"
    size           = "Standard_B2s"
    admin_username = "azureuser"

    ssh_public_key = "ssh-rsa YOUR_PUBLIC_KEY"

    nic_key = "nic1"

    tags = {
      environment = "dev"
      project     = "terraform-vm"
    }
  }

  vm2 = {
    name           = "vm-dev-02"
    rg_key         = "rg2"
    size           = "Standard_B2s"
    admin_username = "azureuser"

    ssh_public_key = "ssh-rsa YOUR_PUBLIC_KEY"

    nic_key = "nic2"

    tags = {
      environment = "dev"
      project     = "terraform-vm"
    }
  }
}