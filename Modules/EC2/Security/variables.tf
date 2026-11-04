 variable "Security-Group-Name" {
  description = "This is the SG Name"
  type = string
  default = "HM-Security-Group"
}

variable "SG-Inbound-Protocol" {
  description = "The is the type of ports"
  type = string
  default = "tcp"
}

variable "SG-Outbound-Protocol" {
  description = "The is the type of ports"
  type = string
  default = "0"
}

variable "SG-inbound-ssh-port" {
  description = "The is In-bound for SSH"
  type = string
  default = "22"
}

variable "SG-inbound-http-port" {
  description = "The is In-bound for HTTP"
  type = string
  default = "80"
}

variable "SG-inbound-https-port" {
  description = "The is In-bound for HTTPS"
  type = string
  default = "443"
}

variable "SG-inbound-Jenkins-port" {
  description = "The is In-bound for Jenkins"
  type = string
  default = "8080"
}

variable "SG-outbound-port" {
  description = "The is Out-bound"
  type = string
  default = "0"
}

variable "SG-CIDR-Blocks" {
  description = "This is the sg CIDR Block"
  type = string
  default = "0.0.0.0/0"
}


variable "VPC-SG-ID" {
  description = "VPC ID for Security Group"
  type        = string
}
