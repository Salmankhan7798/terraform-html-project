variable "region" {
  default = "us-east-2"
}

variable "AmiLinux" {
  type = map(string)

  default = {
    us-east-1 = "ami-080e1f13689e07408" # Virginia
    us-east-2 = "ami-0b8b44ec9a8f90422" # Ohio
    us-west-2 = "ami-08116b9957a259459" # Oregon
  }
}

variable "vpc-fullcidr" {
  default     = "192.168.0.0/16"
  description = "the vpc cdir"
}

variable "Subnet-Public-CIDR" {
  default     = "192.168.1.0/24"
  description = "the cidr of the 2a-Public Subnet"
}

variable "Subnet-Private-CIDR" {
  default     = "192.168.2.0/24"
  description = "the cidr of the 2a-Private Subnet"
}
