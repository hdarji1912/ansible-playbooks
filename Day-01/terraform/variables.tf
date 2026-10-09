variable "region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-2"
}

variable "key_name" {
  description = "EC2 key pair used for SSH access"
  type        = string
  default     = "day1-ansible-key"
}

variable "instances" {
  description = "Map of instance names to AMI IDs, SSH users, OS family and instance type"

  type = map(object({
    ami           = string
    user          = string
    os_family     = string
    instance_type = string
  }))

  default = {
    "control-node" = {
      ami           = "ami-0d3d85815a9746bc5"
      user          = "ec2-user"
      os_family     = "amazon"
      instance_type = "t3.micro"
    }

    "web-server" = {
      ami           = "ami-0d3d85815a9746bc5"
      user          = "ec2-user"
      os_family     = "amazon"
      instance_type = "t3.micro"
    }

    "app-server" = {
      ami           = "ami-0d3d85815a9746bc5"
      user          = "ec2-user"
      os_family     = "amazon"
      instance_type = "t3.micro"
    }

    "db-server" = {
      ami           = "ami-0d3d85815a9746bc5"
      user          = "ec2-user"
      os_family     = "amazon"
      instance_type = "t3.micro"
    }
  }
}

variable "allowed_ports" {
  description = "List of allowed inbound TCP ports"
  type        = list(number)
  default     = [22, 80]
}