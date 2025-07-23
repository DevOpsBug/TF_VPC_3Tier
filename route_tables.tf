### TIER 1 (PUBLIC) ROUTE TABLE ###

resource "aws_route_table" "tier1_route_table" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "${var.vpc_name}_Tier1_Public_RT"
    Provisioner = "Terraform"
    Description = "Route Table for Tier1 (public) Subnet"
  }

  depends_on = [aws_subnet.tier1_subnet]
}

resource "aws_route_table_association" "tier1_route_table_association" {
  subnet_id      = aws_subnet.tier1_subnet.id
  route_table_id = aws_route_table.tier1_route_table.id
}

resource "aws_route" "tier1_rt_ig" {
  route_table_id            = aws_route_table.tier1_route_table.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.main_internet_gateway.id
}


### TIER 2 (SEMI-PRIVATE) ROUTE TABLE ###


resource "aws_route_table" "tier2_route_table" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "${var.vpc_name}_Tier2_SemiPrivate_RT"
    Provisioner = "Terraform"
    Description = "Route Table for Tier2 (semi-private) Subnet"
  }

  depends_on = [aws_subnet.tier2_subnet]
}

resource "aws_route_table_association" "tier2_route_table_association" {
  subnet_id      = aws_subnet.tier2_subnet.id
  route_table_id = aws_route_table.tier2_route_table.id
}

resource "aws_route" "tier2_rt_natgw" {
  route_table_id            = aws_route_table.tier2_route_table.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.main_nat_gateway.id
}


### TIER 3 (PRIVATE) ROUTE TABLE ###

resource "aws_route_table" "tier3_route_table" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "${var.vpc_name}_Tier3_Private_RT"
    Provisioner = "Terraform"
    Description = "Route Table for Tier3 (private) Subnet"
  }

  depends_on = [aws_subnet.tier3_subnet]
}

resource "aws_route_table_association" "tier3_route_table_association" {
  subnet_id      = aws_subnet.tier3_subnet.id
  route_table_id = aws_route_table.tier3_route_table.id
}


