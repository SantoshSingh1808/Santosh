root-resource = {
  sonu = {
    name     = "sonu"
    location = "West Europe"
  }

  monu = {
    name     = "monu"
    location = "West Europe"
  }
}

root-vnet = {
  vnet1 = {
    vnet_name     = "sonu-vnet"
    rg_name       = "sonu"
    location      = "West Europe"
    address_space = ["10.0.0.0/24"]
  }
  vnet2 = {
    vnet_name     = "monu-vnet"
    rg_name       = "monu"
    location      = "West Europe"
    address_space = ["10.0.0.0/24"]
  }
}

root-subnet = {
  subnet1 = {
    subnet_name = "frontend-subnet"
    rg_name = "sonu"
    virtual_network_name = "sonu-vnet"
    address_prefixes = ["10.0.0.0/26"]

    subnet2 = {
    subnet_name = "backend-subnet"
    rg_name = "sonu"
    virtual_network_name = "sonu-vnet"
    address_prefixes = ["10.0.0.64/26"]
  }
}