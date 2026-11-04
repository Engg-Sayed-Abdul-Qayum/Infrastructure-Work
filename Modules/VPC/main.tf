resource "aws_vpc" "HM-VPC" {
  cidr_block = var.vpc-cidr-block
  tags = {
    Name = var.vpc-name
  }
}

resource "aws_subnet" "public-subnet" {
  vpc_id = aws_vpc.HM-VPC.id
  cidr_block = var.subnet-cidr-public
  tags = {
    Name = var.subnet-name-public
  }
}

resource "aws_subnet" "privite-subnet" {
  vpc_id = aws_vpc.HM-VPC.id
  cidr_block = var.subnet-cidr-privite
  tags = {
    Name = var.subnet-name-privite
  }
}

resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.HM-VPC.id
  route {
    cidr_block = var.route-table-cidr
    gateway_id = aws_internet_gateway.HM-igw.id
  }
  tags = {
    Name = var.route-table-name-public
  }
}

resource "aws_route_table" "privite-route-table" {
  vpc_id = aws_vpc.HM-VPC.id
  route {
    cidr_block = var.route-table-cidr
    gateway_id = aws_internet_gateway.HM-igw.id
  }
  tags = {
    Name = var.route-table-name-privite
  }
}

resource "aws_route_table_association" "public-route-association" {
  route_table_id = aws_route_table.public-route-table.id
  subnet_id = aws_subnet.public-subnet.id
}

resource "aws_route_table_association" "privite-route-association" {
  route_table_id = aws_route_table.privite-route-table.id
  subnet_id = aws_subnet.privite-subnet.id
}

resource "aws_internet_gateway" "HM-igw" {
  vpc_id = aws_vpc.HM-VPC.id
  tags = {
    Name = var.internet-gateway-name
  }
}