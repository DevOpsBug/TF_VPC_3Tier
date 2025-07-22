resource "aws_subnet" "tier1_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.tier1_subnet_cidr

  tags = {
    Name = var.tier1_subnet_name
    Provisioner = "Terraform"
  }
}

resource "aws_subnet" "tier2_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.tier2_subnet_cidr

  tags = {
    Name = var.tier2_subnet_name
    Provisioner = "Terraform"
  }
}

resource "aws_subnet" "tier3_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.tier3_subnet_cidr

  tags = {
    Name = var.tier3_subnet_name
    Provisioner = "Terraform"
  }
}