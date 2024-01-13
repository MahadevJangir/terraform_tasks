
resource "aws_instance" "ec2_instance" {
    ami            = "${var.ami_id}"
    subnet_id      = "${var.subnet_id}"
    count          = "${var.number_of_instances}"
    instance_type  = "${var.instance_type}"
    key_name       = "${var.ami_key_pair_name}"
    tags           = {
                       Name = "Terraform-instance-labels"
                       Environment = "${element(var.environment_name, count.index)}"
                     }
                   
}
