resource "aws_route_table" "public_routetable" {
  vpc_id = aws_vpc.two-tierVPC.id

  route {
    cidr_block = var.public_rt_cidr
    gateway_id = aws_internet_gateway.two_tier_internet_gateway.id
  }

  tags = {
    Name = var.public_rt_name
  }
}

resource "aws_route_table" "private_routetable" {
  vpc_id = aws_vpc.two-tierVPC.id

  route {
    cidr_block = var.private_rt_cidr
    gateway_id = aws_nat_gateway.two_tier_nat_gateway.id
  }

  tags = {
    Name = var.private_rt_name
  }
}

resource "aws_route_table_association" "public_subnet1_rt_association" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_routetable.id

  depends_on = [aws_route_table.public_routetable]
}

resource "aws_route_table_association" "public_subnet2_rt_association" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.public_routetable.id

  depends_on = [aws_route_table.public_routetable]
}

resource "aws_route_table_association" "private_subnet1_rt_association" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_routetable.id

  depends_on = [aws_route_table.private_routetable]
}

resource "aws_route_table_association" "private_subnet2_rt_association" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.private_routetable.id

  depends_on = [aws_route_table.private_routetable]
}