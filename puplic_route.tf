resource "aws_route" "puplic-r" {
  route_table_id            = aws_route_table.puplic-rt.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id  = aws_internet_gateway.gw.id
  depends_on = [aws_route_table.puplic-rt]
}