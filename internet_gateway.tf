

resource "aws_internet_gateway" "main_internet_gateway" {
  vpc_id = aws_vpc.main_vpc.id

    tags = {
    Name = var.internet_gateway_name
    Provisioner = "Terraform"
  }

  depends_on = [aws_subnet.tier1_subnet]
}