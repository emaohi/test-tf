resource "aws_ebs_volume" "v1" {
  new_attr = 1
  availability_zone = "us-west-2a"
  size = 100
}

resource "aws_ebs_volume" "v2" {
  availability_zone = "us-west-2a"
  size = 100
}
