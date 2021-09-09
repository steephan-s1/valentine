resource "aws_route_table" "main" {
  vpc_id = var.vpc_id

  tags = {
    Name = "example"
  }
}
resource "aws_route_table" "main1" {
  vpc_id = var.vpc_id

  tags = {
    Name = "example"
  }
}


resource "aws_route" "public" {
  route_table_id              = aws_route_table.main.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id      = var.gateway
}

resource "aws_route_table_association" "public" {
  subnet_id      = var.subnet_id_public
  route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = var.subnet_id_private
  route_table_id = aws_route_table.main1.id
}
