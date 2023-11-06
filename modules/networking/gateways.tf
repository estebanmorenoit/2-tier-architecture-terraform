resource "aws_internet_gateway" "two_tier_internet_gateway" {
  vpc_id = aws_vpc.two-tierVPC.id

  tags = {
    Name = var.igw_name
  }
}

resource "aws_eip" "nat_gateway_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "two_tier_nat_gateway" {
  allocation_id = aws_eip.nat_gateway_eip.id
  subnet_id     = aws_subnet.public_subnet1.id

  tags = {
    Name = var.nat_gateway_name
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.two_tier_internet_gateway]
}