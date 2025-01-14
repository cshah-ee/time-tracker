resource "aws_eip" "static_ip" {
  vpc = true
}

resource "aws_eip_association" "static_ip_association" {
  instance_id = aws_instance.backend-server.id
  allocation_id = aws_eip.static_ip.id
}

output "static_ip_addr" {
  value = aws_eip.static_ip.public_ip
}

