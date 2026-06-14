output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "public_subnet_1_id" {
  value = aws_subnet.public_1.id
}

output "private_subnet_1_id" {
  value = aws_subnet.private_1.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}

output "private_route_table_id" {
  value = aws_route_table.private.id
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "private_instance_id" {
  value = aws_instance.private_server.id
}

output "private_instance_private_ip" {
  value = aws_instance.private_server.private_ip
}

output "rds_endpoint" {
  value = aws_db_instance.main.endpoint
}

output "rds_address" {
  value = aws_db_instance.main.address
}