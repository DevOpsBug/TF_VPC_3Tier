### VPC ###

variable "vpc_name" {
    default = "Main_VPC"
    type = string
}

variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
    type = string
}


### SUBNET TIER1 ###

variable "tier1_subnet_cidr" {      #Cidr Block for public Subnet
    default = "10.0.1.0/24"
    type = string
}

### SUBNET TIER 2 ###

variable "tier2_subnet_cidr" {      #Cidr Block for tier2 subnet
    default = "10.0.2.0/24"
    type = string
}

### SUBNET TIER 3 ###

variable "tier3_subnet_cidr" {     #Cidr Block for private (tier3) subnet 
    default = "10.0.3.0/24"
    type = string
}

