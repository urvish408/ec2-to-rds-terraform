variable "ami_id"{
    description = "The AMI ID to use for the EC2 instance"
    type        = string
    default = "ami-05b10e08dert334"
}

variable "instance_type"{
    description = "The instance type to use for the EC2 instance"
    type        = string
    default = "t3.micro"
}

variable "subnet_id"{
    description = "The Subnet ID to launch the EC2 instance in"
    type        = string
    default = "subnet-12345678"
}

variable "vpc_id"{
    description = "The VPC ID where the security group will be created"
    type        = string
    default = "vpc-12345678"
}