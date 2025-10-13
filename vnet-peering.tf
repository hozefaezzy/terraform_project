# VNet Peerings
# resource "azurerm_virtual_network_peering" "spoke1_to_hub" {
#  name                         = "preprod-to-hub"
#  resource_group_name          = azurerm_resource_group.spoke1.name
#  virtual_network_name         = azurerm_virtual_network.spoke1.name
#  remote_virtual_network_id    = azurerm_virtual_network.hub.id
#  allow_forwarded_traffic      = true
#  allow_virtual_network_access = true
# }

# resource "azurerm_virtual_network_peering" "hub_to_spoke1" {
#  name                         = "hub-to-preprod"
#  resource_group_name          = azurerm_resource_group.hub.name
#  virtual_network_name         = azurerm_virtual_network.hub.name
#  remote_virtual_network_id    = azurerm_virtual_network.spoke1.id
#  allow_forwarded_traffic      = true
#  allow_virtual_network_access = true
# }

# resource "azurerm_virtual_network_peering" "spoke2_to_hub" {
#  name                         = "prod-to-hub"
#  resource_group_name          = azurerm_resource_group.spoke2.name
#  virtual_network_name         = azurerm_virtual_network.spoke2.name
#  remote_virtual_network_id    = azurerm_virtual_network.hub.id
#  allow_forwarded_traffic      = true
#  allow_virtual_network_access = true
# }

# resource "azurerm_virtual_network_peering" "hub_to_spoke2" {
#  name                         = "hub-to-prod"
#  resource_group_name          = azurerm_resource_group.hub.name
#  virtual_network_name         = azurerm_virtual_network.hub.name
#  remote_virtual_network_id    = azurerm_virtual_network.spoke2.id
#  allow_forwarded_traffic      = true
#  allow_virtual_network_access = true
# }