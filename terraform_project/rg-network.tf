# Management Group
# resource "azurerm_management_group" "mgmt" {
#  display_name = "LandingZoneMG"
#  name         = "landingzone-mg"
# }

# Subscription Data
# data "azurerm_subscription" "current" {}

# Resource Groups
resource "azurerm_resource_group" "hub" {
  name     = "network-hub-rg"
  location = var.location
}

resource "azurerm_resource_group" "spoke1" {
  name     = "pre-prod-rg"
  location = var.location
}

resource "azurerm_resource_group" "spoke2" {
  name     = "production-rg"
  location = var.location
}

# Hub VNet + Subnets + Firewall Subnet
resource "azurerm_virtual_network" "hub" {
  name                = "network-hub-vnet"
  address_space       = ["172.16.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name
}

resource "azurerm_subnet" "hub_subnet" {
  name                 = "network-hub-subnet"
  resource_group_name  = azurerm_resource_group.hub.name
  virtual_network_name = azurerm_virtual_network.hub.name
  address_prefixes     = ["172.16.0.0/24"]
}

resource "azurerm_subnet" "fw_subnet" {
  name                 = "AzureFirewallSubnet"
  resource_group_name  = azurerm_resource_group.hub.name
  virtual_network_name = azurerm_virtual_network.hub.name
  address_prefixes     = ["172.16.1.0/24"]
}

# Spoke1 VNets + Subnet
resource "azurerm_virtual_network" "spoke1" {
  name                = "preprod-vnet"
  address_space       = ["172.17.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.spoke1.name
}

resource "azurerm_subnet" "spoke1_subnet" {
  name                 = "preprod-subnet"
  resource_group_name  = azurerm_resource_group.spoke1.name
  virtual_network_name = azurerm_virtual_network.spoke1.name
  address_prefixes     = ["172.17.1.0/24"]
}

# Spoke2 VNets + Subnet
resource "azurerm_virtual_network" "spoke2" {
  name                = "production-vnet"
  address_space       = ["172.18.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.spoke2.name
}

resource "azurerm_subnet" "spoke2_subnet" {
  name                 = "production-subnet"
  resource_group_name  = azurerm_resource_group.spoke2.name
  virtual_network_name = azurerm_virtual_network.spoke2.name
  address_prefixes     = ["172.18.1.0/24"]
}