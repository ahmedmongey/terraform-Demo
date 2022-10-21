resource "aws_subnet" "mongey-private-subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "mongey-private-subnet1"
  }
}


resource "aws_subnet" "mongey-private-subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "mongey-private-subnet2"
  }
}