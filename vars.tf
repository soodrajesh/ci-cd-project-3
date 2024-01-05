variable "aws_profile" {
  description = "AWS CLI profile name to use for authentication"
  type        = string
  default     = "rsood"
}

variable "region" {
  type = string
  default = "us-west-2"  
}

variable "ami-name" {
  type = string
  default = "ami-002c2b8d1f5b1eb47"  
}

variable "instance-size" {
  type = string
  default = "t2.micro"
}

variable "private-subnet1" {
  type = string
  default = "subnet-049ac40c7fa73e691"
}

variable "key-pair" {
  type = string
  default = "rsood-myawsacc"
}

variable "security-group" {
  type = string
  default = "sg-020a0f0701a3be22e"
}

variable "ec2-role" {
  type = string
  default = "demo-EC2InstanceProfile-jck8w4bDxoV2"
}

