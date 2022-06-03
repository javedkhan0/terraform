#production-server-SG
resource "aws_security_group" "prod-sg" {
  name        = "prod-sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.vpc-rabtech.id

  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "prod-sg"
  }
}
# dev-server-SG
resource "aws_security_group" "dev-sg" {
  name        = "dev-sg"
  description = "Allow ssh trafic"
  vpc_id      = aws_vpc.vpc-rabtech.id

  ingress {
    description     = "TLS from VPC"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = ["${aws_security_group.prod-sg.id}"]
  }
  ingress {
    description     = "TLS from VPC"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = ["${aws_security_group.prod-sg.id}"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "prod-sg"
  }
}

