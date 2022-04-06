###### generic variables
variable "client_id" {
  default = ""
}
variable "client_secret" {
  default = ""
}
variable "tfstate_accesskey" {
  default = ""
}
variable "subscription_id" {
  default = ""
}
variable "tenant_id" {
  default = ""
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
    app         = ""
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
