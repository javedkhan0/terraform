#production server
resource "aws_instance" "prodserver" {
  ami                    = var.ami-prod
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.prod-sg.id]
  key_name               = var.key_name-prod
  availability_zone      = data.aws_availability_zones.available.names[0]
  associate_public_ip_address = true

  tags = {
    Name = "prodserver"
  }
}
