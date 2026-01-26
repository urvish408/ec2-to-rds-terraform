# Security group 
resource "aws_security_group" "rds-sg" {
  name        = "rds-sg"
  description = "rds-sg"
  vpc_id      = var.rds_vpc

  tags = {
    Name = "rds-sg"
  }
}

resource "aws_security_group_rule" "example" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  security_group_id = aws_security_group.rds-sg.id
  source_security_group_id = var.ec2_sg
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.ec2-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

#DB subnet group


#DB instance 