resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "public-rt"
  }
}