# TO get type of images visit https://github.com/scaleway/image-ubuntu

resource "scaleway_server" "srv2" {
	name		= "srv2"
  	image		= "${data.scaleway_image.ubuntu.id}"
	type		= "C2S"
	#type		= "VC1M"
}

resource "scaleway_ip" "srv2_ip" {
	server		= "${scaleway_server.srv2.id}"
}

