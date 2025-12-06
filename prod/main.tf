
# this is settin up the region
resource "aws_vpc" "prod_vpc" {
  tags = {
    Name = "Prod-VPC"
  }
  cidr_block = var.VPC_CIDR

}


#this is to set up the subnets (public and private)
resource "aws_subnet" "public_subnet" {

    vpc_id = aws_vpc.prod_vpc.id
    availability_zone = var.az1
    cidr_block = var.Public_Subnet_CIDR
    map_public_ip_on_launch = true
    
    tags = {
        Name = "Default subnet for us-east-1a"
    }
}

resource "aws_subnet" "private_subnet" {

    vpc_id = aws_vpc.prod_vpc.id
    availability_zone = var.az2
    cidr_block = var.Private_Subnet_CIDR
    map_public_ip_on_launch = false
    tags = {
        Name = "Default subnet for us-east-1b"
    }
}


resource "aws_internet_gateway"  "prod_igw" {

    vpc_id = aws_vpc.prod_vpc.id
    region = var.prod_region

    tags = {
        Name = "prod-igw"
    }
}