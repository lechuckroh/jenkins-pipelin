resource "aws_vpc" "vpc1" {
  cidr_block = "172.20.0.0/20"
  tags = {
    Name = "example1-vpc1"
  }
}

resource "aws_subnet" "vpc1-a" {
  vpc_id = "${aws_vpc.vpc1.id}"
  cidr_block = "172.20.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "example1-vpc1-a"
  }
}

resource "aws_subnet" "vpc1-b" {
  vpc_id = "${aws_vpc.vpc1.id}"
  cidr_block = "172.20.1.0/24"
  availability_zone = "ap-northeast-2b"
  tags = {
    Name = "example1-vpc1-b"
  }
}

resource "aws_vpc" "vpc2" {
  cidr_block = "172.21.0.0/20"
  tags = {
    Name = "example1-vpc2"
  }
}

resource "aws_subnet" "vpc2-a" {
  vpc_id = "${aws_vpc.vpc2.id}"
  cidr_block = "172.21.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "example1-vpc2-a"
  }
}

resource "aws_subnet" "vpc2-b" {
  vpc_id = "${aws_vpc.vpc2.id}"
  cidr_block = "172.21.1.0/24"
  availability_zone = "ap-northeast-2b"
  tags = {
    Name = "example1-vpc2-a"
  }
}
