# VM in Spoke1 - Linux
/* resource "azurerm_network_interface" "nic_linuxvm" {
  name                = "nic-linuxvm01"
  location            = var.location
  resource_group_name = azurerm_resource_group.spoke1.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.spoke1_subnet.id
    private_ip_address_allocation = "Dynamic"
    # private_ip_address            = "172.17.1.20
  }
}

resource "azurerm_linux_virtual_machine" "linuxvm" {
  name                = "linuxvm01"
  location            = var.location
  resource_group_name = azurerm_resource_group.spoke1.name
  size                = "Standard_B2s"
  admin_username      = "linuxadmin"
  network_interface_ids = [azurerm_network_interface.nic_linuxvm.id]
  admin_password      = "Password@123"
  disable_password_authentication = false

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "20.04-LTS"
    version   = "latest"
  }
}

# VM in Spoke2 - Windows
resource "azurerm_network_interface" "nic_winvm" {
  name                = "nic-winvm01"
  location            = var.location
  resource_group_name = azurerm_resource_group.spoke2.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.spoke2_subnet.id
    private_ip_address_allocation = "Dynamic"
    # private_ip_address            = "172.18.1.20
  }
}

resource "azurerm_windows_virtual_machine" "winvm" {
  name                = "winvm01"
  location            = var.location
  resource_group_name = azurerm_resource_group.spoke2.name
  size                = "Standard_B2ms"
  admin_username      = "admin"
  admin_password      = "Password@123"
  network_interface_ids = [azurerm_network_interface.nic_winvm.id]

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
} */