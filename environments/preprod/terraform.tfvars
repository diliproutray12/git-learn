resource-group = {
  rg1 = {
    name     = "appa-rg"
    location = "eastus"
  }
}
vnett = {
  vnet1 = {
    name          = "frontendvnet"
    location      = "eastus"
    rgname        = "appa-rg"
    address_space = ["10.143.0.0/16"]
  }
}
subnett = {
  snet1 = {
    name             = "netflix-subnet"
    vnet             = "frontendvnet"
    rgname           = "appa-rg"
    address_prefixes = ["10.143.0.0/24"]
  }
}