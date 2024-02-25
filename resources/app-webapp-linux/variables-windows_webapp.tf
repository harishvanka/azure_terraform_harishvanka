variable "sku_name" {
    description = "Sku name of app service plan"
    type = string
}

variable "os_type" {
    description = "Operating System Type"
    type = string
}

variable "webapp_name" {
    description = "name of windows webapp"
    type = string
    default = ""
}