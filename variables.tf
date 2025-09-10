variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account name to create"
}

variable "storage_account_tier" {
  type        = string
  description = "Tier"
}

variable "environment" {
  type        = string
  description = "Environment"

  validation {
    condition     = contains(["dev", "uat", "stg", "prd"], lower(var.environment))
    error_message = "environment must be one of: dev, uat, stg, prd."
  }
}
