// Creating Security Group
resource "aws_security_group" "inboundRules" {
  name        = "inboundRules"
  description = "Allowing inbound traffic"

# this dynamic function create ingress for allport passed in loop
  dynamic "ingress" {
    for_each = [22, 80, 443, 3006, 8080]
    iterator = port
    content {
      description = "tls for VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }


}


// here below value can be used for adding security group to instance
// key name should be "vpc_security_group_ids" for instance in vpc
output "sgDetails" {
  value = "${aws_security_group.inboundRules.id}"
}