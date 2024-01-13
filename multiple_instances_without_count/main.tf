
resource "aws_instance" "ec2_instance1" {
    ami            = "${var.ami_id}"
    subnet_id      = "${var.subnet_id}"
    instance_type  = "${var.instance_type}"
    key_name       = "${var.ami_key_pair_name}"
    tags           = {

                      Name = "Terraform-instance1"
                     }
}

resource "aws_instance" "ec2_instance2" {
    ami            = "${var.ami_id}"
    subnet_id      = "${var.subnet_id}"
    instance_type  = "${var.instance_type}"
    key_name       = "${var.ami_key_pair_name}"
    tags           = {

                      Name = "Terraform-instance2"
                     }
}


resource "aws_instance" "ec2_instance3" {
    ami            = "${var.ami_id}"
    subnet_id      = "${var.subnet_id}"
    instance_type  = "${var.instance_type}"
    key_name       = "${var.ami_key_pair_name}"
    tags           = {

                      Name = "Terraform-instance3"
                     }
}


