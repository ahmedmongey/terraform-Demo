resource "aws_route" "private-r" {
  route_table_id            = aws_route_table.private-rt.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id  = aws_nat_gateway.mongey-natgateway.id
  depends_on = [aws_route_table.private-rt]
}