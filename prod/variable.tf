variable "prod_region" {
    type = string 
    default = "us-east-1"
    description = "This is the region for the prod environment"
}

variable "az1" {
    type = string 
    default = "us-east-1a"
    description = "This is the  publick subnet region for the prod environment"
}

variable "az2" {
    type = string
    default = "us-east-1b"
    description = "This is the private subnet region for the prod environment"
}



# defining the CIDR block ranges
variable "VPC_CIDR" {
    type = string
    default = "10.0.0.0/16"
    description = "This is the CIDR block for the prod environment"
}

variable "Public_Subnet_CIDR" {
    type = string
    default = "10.0.1.0/24"
    description = "This is the CIDR block for the public subnet in the prod environment"
}


variable "Private_Subnet_CIDR" {
    type = string
    default = "10.0.2.0/24"
    description = "This is the CIDR block for the private subnet in the prod environment"
}