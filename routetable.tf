#Public Route Table
resource "aws_route_table" "public-route" {
  vpc_id = aws_vpc.vpc-rabtech.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-route"
  }
}
#Associate Public Route Table to Public Subnets
resource "aws_route_table_association" "pub-ass-1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public-route.id
}
resource "aws_route_table_association" "pub-ass-2" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.public-route.id
}
resource "aws_route_table_association" "pub-ass-3" {
  subnet_id      = aws_subnet.public-subnet-3.id
  route_table_id = aws_route_table.public-route.id
}

#Private Route Table
resource "aws_route_table" "private-route" {
  vpc_id = aws_vpc.vpc-rabtech.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat-gw.id
  }

  tags = {
    Name = "private-route"
  }
}
#Associate Private Route Table to Private Subnets
resource "aws_route_table_association" "pri-ass-1" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.private-route.id
}
resource "aws_route_table_association" "pri-ass-2" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.private-route.id
}
resource "aws_route_table_association" "pri-ass-3" {
  subnet_id      = aws_subnet.private-subnet-3.id
  route_table_id = aws_route_table.private-route.id
}