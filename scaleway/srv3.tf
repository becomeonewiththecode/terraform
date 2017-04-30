# TO get type of images visit https://github.com/scaleway/image-ubuntu

resource "scaleway_server" "srv3" {
	name		= "srv3"
  	image		= "${data.scaleway_image.ubuntu.id}"
	type		= "C2S"
	#type		= "VC1M"
}

resource "scaleway_ip" "srv3_ip" {
	server		= "${scaleway_server.srv3.id}"
}

