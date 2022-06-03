#vpc resource
resource "aws_vpc" "vpc-rabtech" {
  cidr_block = var.vpccidr
  # cidr block iteration found in the terraform.tfvars file
  tags = {
    Name = "vpc-rabtech"
  }
}
#Elastic IP for NAT Gateway resource
resource "aws_eip" "nat-eip" {
  vpc = true
  tags = {
    Name = "eip"
  }
}
#NAT Gateway object and attachment of the Elastic IP Address from above
resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.nat-eip.id
  subnet_id     = aws_subnet.public-subnet-1.id
  tags = {
    Name = "NAT"
  }
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}
#Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc-rabtech.id
  tags = {
    Name = "rabtech-igw"
  }
}

