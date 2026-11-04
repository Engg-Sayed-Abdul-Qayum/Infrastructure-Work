module "S3-Bucket" {
  source = "./modules/s3"
}

module "vpc" {
  source = "./Modules/VPC"
}

module "key-pair" {
  source = "./Modules/EC2/Key"
}

module "security-group" {
  source    = "./Modules/EC2/Security"
  VPC-SG-ID = module.vpc.VPC-ID
}

module "ecr" {
  source = "./Modules/ECR"
}

module "EC2-main" {
  source             = "./Modules/EC2"
  VPC-EC2-ID         = module.vpc.VPC-ID
  Subnet-Public-ID   = module.vpc.Public-Subnet-ID
  ec2-key-name       = module.key-pair.Key-pair-name
  ec2-security-group = module.security-group.SG-ID
}

module "EC2-slave-1" {
  source             = "./Modules/EC2"
  VPC-EC2-ID         = module.vpc.VPC-ID
  Subnet-Public-ID   = module.vpc.Public-Subnet-ID
  ec2-key-name       = module.key-pair.Key-pair-name
  ec2-security-group = module.security-group.SG-ID
  ec2-type           = "t2.medium"
  ec2-name           = "Slave-1"
}

module "EC2-slave-2" {
  source             = "./Modules/EC2"
  VPC-EC2-ID         = module.vpc.VPC-ID
  Subnet-Public-ID   = module.vpc.Public-Subnet-ID
  ec2-key-name       = module.key-pair.Key-pair-name
  ec2-security-group = module.security-group.SG-ID
  ec2-name           = "Slave-2"
  ec2-type           = "t2.medium"
}