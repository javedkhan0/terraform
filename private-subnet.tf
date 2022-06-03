#Private-subnet-1
resource "aws_subnet" "private-subnet-1" {
  vpc_id                  = aws_vpc.vpc-rabtech.id
  cidr_block              = var.prisub1cidr
  map_public_ip_on_launch = false
  availability_zone       = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "private-subnet-1"
  }
}
#private-subnet-1
resource "aws_subnet" "private-subnet-2" {
  vpc_id                  = aws_vpc.vpc-rabtech.id
  cidr_block              = var.prisub2cidr
  map_public_ip_on_launch = false
  availability_zone       = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "private-subnet-2"
  }
}
#private-subnet-1
resource "aws_subnet" "private-subnet-3" {
  vpc_id                  = aws_vpc.vpc-rabtech.id
  cidr_block              = var.prisub3cidr
  map_public_ip_on_launch = false
  availability_zone       = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "private-subnet-3"
  }
}