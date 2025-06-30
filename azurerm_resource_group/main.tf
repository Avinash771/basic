resource "azurerm_resource_group" "resource_group" {
  name     = var.rg_name1
  location = var.location
}
# hello manchal bhai
resource "azurerm_virtual_network" "virtual_network" {
  name                = var.virtual_network_name
  depends_on = [ azurerm_resource_group.resource_group ]
  location            = var.virtual_network_location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
}

output "ip" {
  value = azurerm_virtual_network.virtual_network.id
  
}
# resource "azurerm_resource"