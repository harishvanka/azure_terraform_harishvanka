variable "name" {
  type = string
  description = "(Optional) The name of the resource group. WHen this value is empty, resource group name will be concatenated as: <project>-rg-<tier>-<applicationName>-<env>-<location>"
  default = ""
}

variable "project" {
  type = string
  description = "Name of Project as part of naming standards"
  default = ""
}

variable "tier" {
  type = string
  description = "Tier of Applicaiton parsed as part of naming standards Ex: Web tier, Database Tier, etc."
  default = ""
}

variable "env" {
  type = string
  description = "Name of Environment parsed as part of naming standards. Ex: Dev, QA, etc."
  default = ""
}

variable "applicationName" {
  type = string
  description = "The name of Application parsed as part of naming standards"
  default = ""
}

variable "location" {
  type = string
  description = "Location of Resource Group"
  default = "West Us"
}