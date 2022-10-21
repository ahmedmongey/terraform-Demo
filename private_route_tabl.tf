resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "private-rt"
  }
}