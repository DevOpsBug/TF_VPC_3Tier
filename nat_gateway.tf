resource "aws_eip" "main_eip" {
  domain = "vpc"

  tags = {
    Name = var.elastic_ip_name
    Provisioner = "Terraform"
  }

  depends_on = [aws_internet_gateway.main_internet_gateway]
}

resource "aws_nat_gateway" "main_nat_gateway" {
  subnet_id     = aws_subnet.tier1_subnet.id
  allocation_id = aws_eip.main_eip.id

  tags = {
    Name = var.nat_gateway_name
    Provisioner = "Terraform"
  }

  depends_on = [aws_eip.main_eip]
}