provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "darshan" {
    ami           = "ami-0ecb62995f68bb549"
    instance_type = "t2.micro"
    subnet_id     = "subnet-016f56747dcf58f85"
    key_name = "cloud"
}

  
