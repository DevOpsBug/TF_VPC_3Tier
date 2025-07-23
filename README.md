# TF_VPC_3Tier


# This Terraform Project creates a 3 Tier VPC

* VPC
* 3 Subnets
  - Tier 1: public (reachable from Internet in- and outbout)
  - Tier 2: semi-private (can reach Internet outbound only through NAT Gateway)
  - Tier 3: private (no connection to Internet either in- or outbound)
* Internet Gateway in Tier 1
* NAT Gateway with Elastic IPfor Tier 2
* 3 Route Tables (one for each subnet)