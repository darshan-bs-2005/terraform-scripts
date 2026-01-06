output "public-id" {
    value = aws_instance.terraform_instance.public_ip
}

output "private-id" {
    value = aws_instance.terraform_instance.private_ip
}

output "instance_name" {
    value = aws_instance.terraform_instance.tags["Name"]
}
