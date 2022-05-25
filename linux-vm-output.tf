#####################################
## Virtual Machine Module - Output ##
#####################################

output "vm_linux_server_instance_id" {
  value = aws_instance.linux-server.*.id
}

output "vm_linux_server_instance_public_dns" {
  value = aws_instance.linux-server.*.public_dns
}

output "vm_linux_server_instance_private_ip" {
  value = aws_instance.linux-server.*.private_ip
}
