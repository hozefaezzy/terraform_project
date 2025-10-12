# resource "azurerm_public_ip" "firewall_pip" {
#  name                = "fw-pip"
#  resource_group_name = azurerm_resource_group.hub.name
#  location            = var.location
#  allocation_method   = "Static"
#  sku                 = "Standard"
# }

# resource "azurerm_firewall" "hub_fw" {
#  name                = "hub-firewall"
#  location            = var.location
#  resource_group_name = azurerm_resource_group.hub.name
#  sku_name            = "AZFW_VNet"
#  sku_tier            = "Standard"

#  ip_configuration {
#    name                 = "fw-config"
#    subnet_id            = azurerm_subnet.fw_subnet.id
#    public_ip_address_id = azurerm_public_ip.firewall_pip.id
#  }
# }