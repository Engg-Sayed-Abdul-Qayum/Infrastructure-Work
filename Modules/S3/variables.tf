variable "s3-name" {
  description = "This is the Name for S3 - Bucket"
  type = string
  default = "hospital-management-s3-bucket"
}

variable "s3-key" {
  description = "This is the Key(Folder) inside the S3 Bucket"
  type = string
  default = "terraform.tfstate"
}

variable "s3-versioning" {
  description = "This for Enabling the S3 Bucket Versioning"
  type = string
  default = "Enabled"
}