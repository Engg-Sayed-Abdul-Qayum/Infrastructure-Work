variable "vpc-name" {
  description = "This is the name for the VPC"   
  type = string
  default = "Hostital-Management-VPC"
}

variable "vpc-cidr-block" {
  description = "This is the CIDR Block for the VPC"
  type = string
  default = "120.0.0.0/16"
}

variable "subnet-name-public" {
  description = "This is the Public Subnet"
  type = string
  default = "Subnet-HM-Public"
}

variable "subnet-cidr-public" {
  description = "This is the CIDR Block ID for the Public Subnet"
  type = string
  default = "120.0.1.0/24"
}

variable "subnet-name-privite" {
  description = "This is the Privite Subnet"
  type = string
  default = "Subnet-HM-Privite"
}

variable "subnet-cidr-privite" {
  description = "This is the CIDR Block ID for the Privite Subnet"
  type = string
  default = "120.0.2.0/24"
}

variable "route-table-name-public" {
  description = "This is the Public Route-Table Name"
  type = string
  default = "Route-Table-HM-Public"
}

variable "route-table-name-privite" {
  description = "This is the Privite Route-Table Name"
  type = string
  default = "Route-Table-HM-Privite"
}

variable "route-table-cidr" {
  description = "This is the route table cidr block"
  type = string
  default = "0.0.0.0/0"
}

variable "route-table-igw-id" {
  description = "This is the igw ID attached to the route table"
  type = string
  default = " "
}

variable "internet-gateway-name" {
  description = "This is the name of the igw name"
  type = string
  default = "igw-HM"
}