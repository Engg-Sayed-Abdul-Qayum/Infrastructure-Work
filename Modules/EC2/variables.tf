variable "VPC-EC2-ID" {
  description = "VPC ID for EC2 security group"
  type        = string
}

variable "Subnet-Public-ID" {
   description = "Subnet ID in which EC2 instances will be launched"
   type = string
}

variable "ec2-name" {
  description = "This is used for giving the Name to the Server"
  type = string
  default = "Hospital-Management-Server"
}

variable "ec2-IAM-ID" {
  description = "This the OS type used in the Server"
  type = string
  default = "ami-0d97d7f07b25dd693"
}

variable "ec2-type" {
  description = "This is used for the configration of the Server"
  type = string
  default = "c7a.xlarge"
}

variable "ec2-key-name" {
  type = string
}

variable "ec2-security-group" {
  type = string
}