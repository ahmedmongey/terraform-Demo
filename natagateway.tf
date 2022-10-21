resource "aws_eip" "mongey-natgateway" {
  vpc      = true
}
resource "aws_nat_gateway" "mongey-natgateway" {
  allocation_id = aws_eip.mongey-natgateway
  subnet_id     = aws_subnet.mongey-puplic-subnet1.id
  tags = {
    Name = "my-nat"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  #depends_on = [aws_internet_gateway.example]
}