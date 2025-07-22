resource "aws_nat_gateway" "main_nat_gateway" {
  subnet_id     = aws_subnet.tier1_subnet.id
  connectivity_type = "private"

  tags = {
    Name = var.nat_gateway_name
    Provisioner = "Terraform"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.main_internet_gateway]
}