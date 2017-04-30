# TO get type of images visit https://github.com/scaleway/image-ubuntu

resource "scaleway_server" "lb" {
	name		= "lb"
  	image		= "${data.scaleway_image.ubuntu.id}"
	type		= "C2S"
	#type		= "VC1S"
}

resource "scaleway_ip" "lb_ip" {
	server		= "${scaleway_server.lb.id}"
}

