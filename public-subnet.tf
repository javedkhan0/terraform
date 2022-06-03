#Public Subnet 1
resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.vpc-rabtech.id
  cidr_block              = var.pubsub1cidr
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "public-subnet-1"
  }
}
#Public Subnet 2
resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.vpc-rabtech.id
  cidr_block              = var.pubsub2cidr
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "public-subnet-1"
  }
}
#Public Subnet 3
resource "aws_subnet" "public-subnet-3" {
  vpc_id                  = aws_vpc.vpc-rabtech.id
  cidr_block              = var.pubsub3cidr
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "public-subnet-1"
  }
}

