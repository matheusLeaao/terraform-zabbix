output "id" {
  description = "List of IDs of instances"
  value       = aws_instance.main.*.id
}

output "arn" {
  description = "List of ARNs of instances"
  value       = aws_instance.main.*.arn
}

output "availability_zone" {
  description = "List of availability zones of instances"
  value       = aws_instance.main.*.availability_zone
}

output "placement_group" {
  description = "List of placement groups of instances"
  value       = aws_instance.main.*.placement_group
}

output "key_name" {
  description = "List of key names of instances"
  value       = aws_instance.main.*.key_name
}

output "password_data" {
  description = "List of Base-64 encoded encrypted password data for the instance"
  value       = aws_instance.main.*.password_data
}

output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, main is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.main.*.public_dns
}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = aws_instance.main.*.public_ip
}

output "ipv6_addresses" {
  description = "List of assigned IPv6 addresses of instances"
  value       = aws_instance.main.*.ipv6_addresses
}

output "primary_network_interface_id" {
  description = "List of IDs of the primary network interface of instances"
  value       = aws_instance.main.*.primary_network_interface_id
}

output "private_dns" {
  description = "List of private DNS names assigned to the instances. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.main.*.private_dns
}

output "private_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = aws_instance.main.*.private_ip
}

output "security_groups" {
  description = "List of associated security groups of instances"
  value       = aws_instance.main.*.security_groups
}

output "vpc_security_group_ids" {
  description = "List of associated security groups of instances, if running in non-default VPC"
  value       = aws_instance.main.*.vpc_security_group_ids
}

output "subnet_id" {
  description = "List of IDs of VPC subnets of instances"
  value       = aws_instance.main.*.subnet_id
}

output "credit_specification" {
  description = "List of credit specification of instances"
  value       = aws_instance.main.*.credit_specification
}

output "instance_state" {
  description = "List of instance states of instances"
  value       = aws_instance.main.*.instance_state
}

output "root_block_device_volume_ids" {
  description = "List of volume IDs of root block devices of instances"
  value       = [for device in aws_instance.main.*.root_block_device : device.*.volume_id]
}

output "ebs_block_device_volume_ids" {
  description = "List of volume IDs of EBS block devices of instances"
  value       = [for device in aws_instance.main.*.ebs_block_device : device.*.volume_id]
}

output "tags" {
  description = "List of tags of instances"
  value       = aws_instance.main.*.tags
}

output "volume_tags" {
  description = "List of tags of volumes of instances"
  value       = aws_instance.main.*.volume_tags
}

output "instance_count" {
  description = "Number of instances to launch specified as argument to main module"
  value       = var.instance_count
}
