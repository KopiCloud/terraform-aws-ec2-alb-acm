################################
## Network Public Only - Main ##
################################

# Create the VPC
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "${lower(var.app_name)}-${lower(var.app_environment)}-vpc"
    Environment = var.app_environment
  }
}

# Define the public subnet #1
resource "aws_subnet" "public-subnet-1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_cidr_1
  availability_zone = var.aws_az_1
  tags = {
    Name = "${lower(var.app_name)}-${lower(var.app_environment)}-public-subnet-1"
    Environment = var.app_environment
  }
}

# Define the public subnet #2
resource "aws_subnet" "public-subnet-2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_cidr_2
  availability_zone = var.aws_az_2
  tags = {
    Name = "${lower(var.app_name)}-${lower(var.app_environment)}-public-subnet-2"
    Environment = var.app_environment
  }
}

# Define the public subnet #3
resource "aws_subnet" "public-subnet-3" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_cidr_3
  availability_zone = var.aws_az_3
  tags = {
    Name = "${lower(var.app_name)}-${lower(var.app_environment)}-public-subnet-3"
    Environment = var.app_environment
  }
}

# Define the internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "${lower(var.app_name)}-${lower(var.app_environment)}-igw"
    Environment = var.app_environment
  }
}

# Define the public route table
resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "${lower(var.app_name)}-${lower(var.app_environment)}-public-subnet-rt"
    Environment = var.app_environment
  }
}

# Assign the public route table to the public subnet 1
resource "aws_route_table_association" "public-rt-1-association" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public-rt.id
}

# Assign the public route table to the public subnet 2
resource "aws_route_table_association" "public-rt-2-association" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.public-rt.id
}

# Assign the public route table to the public subnet 3
resource "aws_route_table_association" "public-rt-3-association" {
  subnet_id      = aws_subnet.public-subnet-3.id
  route_table_id = aws_route_table.public-rt.id
}
