resource "aws_subnet" "tier1_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.tier1_subnet_cidr

  tags = {
    Name = "${var.vpc_name}_Tier1_Public_Subnet"
    Provisioner = "Terraform"
  }

  depends_on = [aws_vpc.main_vpc]
}

resource "aws_subnet" "tier2_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.tier2_subnet_cidr

  tags = {
    Name = "${var.vpc_name}_Tier2_SemiPrivate_Subnet"
    Provisioner = "Terraform"
  }

  depends_on = [aws_vpc.main_vpc]
}

resource "aws_subnet" "tier3_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.tier3_subnet_cidr

  tags = {
    Name = "${var.vpc_name}_Tier3_Private_Subnet"
    Provisioner = "Terraform"
  }

  depends_on = [aws_vpc.main_vpc]
}