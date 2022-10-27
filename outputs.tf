output "vnet_id" {
    value = azurerm_virtual_network.hk-ntier-vnet.id
}

output "resourcegroup_name" {
    value = azurerm_resource_group.ntier-res-grp-hk.name
}

output "location" {
    value = azurerm_virtual_network.hk-ntier-vnet.location

}

output "vnet_name" {
    value = azurerm_virtual_network.hk-ntier-vnet.name
}

output "subnets" {
    value = azurerm_subnet.subnet_ntier
    }

output "subnet_count" {
    value = length(azurerm_subnet.subnet_ntier)
}