variable "resource_group_name" {
    description = "name of resource group"
    type = string

    # validation {
    #   condition = can(regex("rg-.*", var.resource_group_name))
    #   error_message = "Resource group name is not valid"
    # }
}

variable "location" {
    description = "Location where resources are deployed"
    type = string
}