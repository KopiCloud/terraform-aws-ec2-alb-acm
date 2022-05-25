###################################
## DNS Configuration - Variables ##
###################################

variable "public_dns_name" {
  type        = string
  description = "Public DNS name"
}      

variable "dns_hostname" {
  type        = string
  description = "DNS Hostname for load balancer"
}