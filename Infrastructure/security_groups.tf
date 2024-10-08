# Security Group
resource "aws_security_group" "EC2SecurityGroup" {
    description = "Provide security"
    name = "Autoscaling_security"
    vpc_id = aws_vpc.EC2VPC.id

    ingress {
        cidr_blocks = ["0.0.0.0/0"]
        from_port   = 80
        protocol    = "tcp"
        to_port     = 80
    }

    egress {
        cidr_blocks = ["0.0.0.0/0"]
        from_port   = 0
        protocol    = "-1"
        to_port     = 0
    }
}
