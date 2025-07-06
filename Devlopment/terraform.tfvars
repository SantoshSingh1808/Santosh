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
}
