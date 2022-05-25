###############################################
## Application Load Balancer Module - Output ##
###############################################

output "linux_alb_dns_name" {
  description = "DNS Name of Linux application load balancer"
  value       = aws_lb.linux-alb.dns_name
}

output "linux_app_dns_name" {
  description = "DNS Name of linux application load balancer"
  value       = "https://${var.dns_hostname}.${var.public_dns_name}"
}

