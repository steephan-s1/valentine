resource "aws_subnet" "public" {
  vpc_id     = var.vpc_id
  
  cidr_block = var.subnet_public
map_public_ip_on_launch  = true
  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = var.vpc_id

  cidr_block = var.subnet_private

  tags = {
    Name = "Main"
  }
}

