provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region     = "${var.region}"
}

resource "aws_instance" "ec2_instance" {
    ami            = "${var.ami_id}"
    subnet_id      = "${var.subnet_id}"
    instance_type  = "${var.instance_type}"
    key_name       = "${var.ami_key_pair_name}"
    
    tags = {
         Name = "Terraform-instance"
    }
}
