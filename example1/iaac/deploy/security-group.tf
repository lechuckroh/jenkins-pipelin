resource "aws_security_group" "example1-allow-all" {
  name = "example1-allow_all"
  description = "Allow all inbound traffic"
  vpc_id = "${aws_vpc.vpc1.id}"

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "example2-allow-all" {
  name = "example2-allow_all"
  description = "Allow all inbound traffic"
  vpc_id = "${aws_vpc.vpc2.id}"

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
