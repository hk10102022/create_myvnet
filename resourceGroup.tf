#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
#Terraform Variables : https://developer.hashicorp.com/terraform/language/values/variables

resource "azurerm_resource_group" "ntier-res-grp-hk"  {
  name =    var.resource_grp_details.grp_name
  location = var.resource_grp_details.grp_location
}
