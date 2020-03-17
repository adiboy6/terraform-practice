variable "resource_group_name" {
  description = "The Resource Group on which you want to have bastion host"
}

variable "location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
}

variable "application_insights_name" {
  description = "The application insights name"
}

variable "application_type" {
  description = "The type of Application Insights to create.Valid values are ios for iOS, java for Java web, MobileCenter for App Center, Node.JS for Node.js, other for General, phone for Windows Phone, store for Windows Store and web for ASP.NET"
}
