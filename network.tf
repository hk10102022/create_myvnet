#virtual netword

resource "azurerm_virtual_network" "hk-ntier-vnet" {
  name                = var.vnet_details.vnet_name
  location            = var.resource_grp_details.grp_location
  resource_group_name = var.resource_grp_details.grp_name
  address_space       = var.vnet_details.vnet_address_space

  depends_on = [
  azurerm_resource_group.ntier-res-grp-hk
]
}

resource "azurerm_subnet" "subnet_ntier" {

    count = length(var.subnet_details.subnet_name)
    name =  var.subnet_details.subnet_name[count.index]    

 #   resource_group_name  = azurerm_resource_group.ntier-res-grp-hk.name
 #   virtual_network_name = azurerm_virtual_network.hk-ntier-vnet.name
    resource_group_name   = var.resource_grp_details.grp_name
    virtual_network_name  = var.vnet_details.vnet_name

#   Using cidtsubnets functions to get a list of subnets
    address_prefixes     =  [cidrsubnet(var.vnet_details.vnet_address_space[0],8,count.index) ]

    depends_on = [
        azurerm_resource_group.ntier-res-grp-hk,
        azurerm_virtual_network.hk-ntier-vnet
    ]
}
