variable "ami" {
    description = "this ami value of ec2_instance"
    type = string
}
variable "instance_type" {
    description = "this instance type of ec2_instance"
    type = string
}
variable "key_name" {
    description = "this key name of ec2_instance"
    type = string
}
variable "subnet_id" {
    description = "this subnet id of ec2_instance"
    type = string
}
variable "tag" {
    description = "this tag of ec2_instance"
    type = string
}