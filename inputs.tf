#tfvars file for each environment
variable "resource_grp_details" {
    type = object( {
            grp_name    =   string
            grp_location=   string
        } )
    default = {
            grp_name    =   "default-ntier-res-grp"
            grp_location=   "eastus"
    } 
  }

  variable "vnet_details" {
    type = object({
            vnet_name           = string 
            vnet_address_space  = list(string)  
    } )

    description = "Description of vnet details"
    }
  
   variable "subnet_details" {
    type = object({
            subnet_name   = list(string) 
 
    } )
   }

