# Output instance 

output "dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, zabbix_server is only available if you've enabled DNS hostnames for your VPC"
  value       = module.ec2.*.public_dns
}

output "instance_name" {
  description = "List of tags of instances"
  value       = module.ec2.*.tags
}

output "public_ip" {
  description = "address ip server"
  value = module.ec2.*.public_ip
}



