###### generic variables
variable "client_id" {
  default = "18bb1d4f-32bb-4121-aa8c-3089c748c63a"
}
variable "client_secret" {
  default = "HxV7Q~VthoQgQssaMLhIWYrD8Aw~pR3GES3zo"
}
variable "tfstate_accesskey" {
  default = ""
}
variable "subscription_id" {
  default = "0aabcf89-410e-427a-9d91-4f84deceb58f"
}
variable "tenant_id" {
  default = "8331e14a-9134-4288-bf5a-5e2c8412f074"
}

######### Network variables
variable "network_resource_group_name" {
  description = "Name of the resource group of the network"
}
variable "network_vnet_name" {
  description = "Name of the network"
}

variable "cosmos_failoverpriority" {
  default     = 1
  description = "Failover priority can be 1 or 0"
}

variable "tags" {
  type = map
  default = {
    costcenter  = ""
    app         = "assortment"
    appid       = ""
    environment = "dev"
  }
  description = "tags for the cosmos account"
}

variable "cosmos_resource_group_name" {
  default     = "AM"
  description = "Name of the resource group"
}

#Cosmos variables
variable "cosmos_account_name" {
  default     = "amgr-nonprod-cosmos-sql-01"
  description = "Name of the sql api cosmos account"
}

variable "location" {
  default     = "Central US"
  description = "Location where the cosmos account should be created"
}

variable "cosmos_offer_type" {
  default     = "standard"
  description = "Tier of the Cosmos account"
}

variable "cosmos_consistency_level" {
  default     = "BoundedStaleness"
  description = "Consistency level of cosmos db"
}

variable "cosmos_geo_location" {
  default     = "CentralUS"
  description = "The secondary location for geo location"
}

variable "cosmos_api" {
  default     = "gremlin"
  description = "Name of the api. Possible values : sql, gremlin, cassandra"
}
