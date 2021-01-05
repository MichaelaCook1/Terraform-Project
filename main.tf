provider "azurerm" {
    features {}
}

module "londonscaleset" {
    source = "./scaleset"
    location = "uksouth"
    prefix = "london"
    inhrs = "9"
    inmins = "0"
    outhrs = "17"
    outmins = "0"
    environment = "Production"
}

module "parisscaleset" {
    source = "./scaleset"
    location = "francecentral"
    prefix = "paris"
    inhrs = "10"
    inmins = "0"
    outhrs = "15"
    outmins = "0"
    environment = "Development"
}

module "mumbaiscaleset" {
    source = "./scaleset"
    location = "'westindia"
    prefix = "mumbai"
    inhrs = "2"
    inmins = "30"
    outhrs = "10"
    outmins = "30"
    environment = "Staging"
}