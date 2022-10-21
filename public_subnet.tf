resource "aws_subnet" "mongey-puplic-subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "mongey-puplic-subnet1"
  }
}


resource "aws_subnet" "mongey-puplic-subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "mongey-puplic-subnet2"
  }
}