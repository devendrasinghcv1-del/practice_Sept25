resource "azurerm_linux_virtual_machine" "vm" {
  for_each = var.vms

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  size           = each.value.size
  admin_username = each.value.admin_username

  network_interface_ids = [
    each.value.nic_id
  ]

  admin_ssh_key {
    username   = each.value.admin_username
    public_key = each.value.ssh_public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }

  tags = each.value.tags
}