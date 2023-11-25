data "aws_instance" "demo" {
  instance_id = "i-0c199ed6b9850150d"

}

data "aws_ami" "ami1" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "^myami-\\d{3}"
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["myami-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
data "aws_ami" "example" {
 most_recent = true
 owners = ["self"]
filter {
    name = "name"
    values = ["myami-*"]
}
  filter {
  name = "root-device-type"
    values = ["ebs"]
}
filter {
    name = "virtualization-type"
    values = ["hvm"]
 }
}