rg_config = {
  "dev-rg" = {
    resource_group_name               = "dev1-rg"
    resource_group_location = "East US"
  }
}
vnet_config = {
  "dev-vnet" = {
    virtual_network_name        = "devtarun-vnet"
    address_space      = ["10.0.0.0/16"]
    resource_group_name = "dev1-rg"
    virtual_network_location           = "East US"
  }
}

subnet_config = {
  "dev-subnet" = {
    subnet_name          = "dev12-subnet"
    resource_group_name  = "dev1-rg"
    virtual_network_name = "devtarun-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

ip_config = {
  "pip1" = {
    public_ip_name        = "pip89"
    resource_group_name   = "dev1-rg"
    resource_group_location             = "East US"
  }
}

nic_config = {
  "nic1" = {
    nic_name                    = "nic14"
    resource_group_name         = "dev1-rg"
    network_interface_location  = "East US"
    subnet_name                 = "dev12-subnet"
    virtual_network_name        = "devtarun-vnet"
    public_ip_name              = "pip89"
  }
}

# nsg_config = {
#   "nsg1" = {
#     nsg_name                = "nsg89"
#     resource_group_name     = "dev-rg"
#     location                = "East US"
#   }
# }

# nsg_nic_config = {
#   "assoc1" = {
#     nic_name                = "nic1"
#     nsg_name                = "nsg1"
#     resource_group_name     = "dev-rg"
#   }
# }

# vm_config = {
#   "vm1" = {
#     vm_name          = "vm90"
#     resource_group_name = "dev-rg"
#     location        = "East US"
#     nic_name        = "nic1"
#     vm_size         = "Standard_B1s"
#     admin_username  = "azureuser"
#     admin_password  = "P@ssw0rd1234!"
#     publisher       = "Canonical"
#     offer           = "UbuntuServer"
#     sku             = "18.04-LTS"
#   }
# }