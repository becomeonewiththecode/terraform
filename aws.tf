provider "aws" {
	region = "${var.region}"
        profile = "${var.profile}"
}

resource "aws_instance" "webserver" {
	ami = "ami-fce3c696"
	instance_type = "t2.micro"
}	
