resource "aws_vpc" "two-tierVPC" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.two-tierVPC.id
  cidr_block              = var.public_subnet1_cidr
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet1_name
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.two-tierVPC.id
  cidr_block              = var.public_subnet2_cidr
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet2_name
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id            = aws_vpc.two-tierVPC.id
  cidr_block        = var.private_subnet1_cidr
  availability_zone = var.availability_zone_1

  tags = {
    Name = var.private_subnet1_name
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id            = aws_vpc.two-tierVPC.id
  cidr_block        = var.private_subnet2_cidr
  availability_zone = var.availability_zone_2

  tags = {
    Name = var.private_subnet2_name
  }
}
