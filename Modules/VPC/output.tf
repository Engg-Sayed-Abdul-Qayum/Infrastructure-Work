output "VPC-Name" {
  value = aws_vpc.HM-VPC
}

output "VPC-ID" {
  value = aws_vpc.HM-VPC.id
}

output "VPC-CIDR-Block" {
  value = aws_vpc.HM-VPC.cidr_block
}

output "Public-Subnet-Name" {
  value = aws_subnet.public-subnet
}

output "Public-Subnet-ID" {
  value = aws_subnet.public-subnet.id
}

output "Public-Subnet-CIDR-Block" {
  value = aws_subnet.public-subnet.cidr_block
}

output "Privite-Subnet-Name" {
  value = aws_subnet.privite-subnet
}

output "Privite-Subnet-ID" {
  value = aws_subnet.privite-subnet.id
}

output "Privite-Subnet-CIDR-Block" {
  value = aws_subnet.privite-subnet.cidr_block
}