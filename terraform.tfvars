# Application Definition 
app_name        = "kopicloud" # Do NOT enter any spaces
app_environment = "dev"       # Dev, Test, Staging, Prod, etc

# Network
vpc_cidr             = "10.11.0.0/16"
public_subnet_cidr_1 = "10.11.1.0/24"
public_subnet_cidr_2 = "10.11.2.0/24"
public_subnet_cidr_3 = "10.11.3.0/24"

# AWS Settings
aws_access_key = "complete-this"
aws_secret_key = "complete-this"
aws_region     = "eu-west-1"

# DNS
public_dns_name = "kopicloud.com"
dns_hostname    = "lbtest"

# Linux Virtual Machine
ec2_count                         = 2
linux_instance_type               = "t2.micro"
linux_associate_public_ip_address = true
linux_root_volume_size            = 20
linux_root_volume_type            = "gp2"
linux_data_volume_size            = 10
linux_data_volume_type            = "gp2"
