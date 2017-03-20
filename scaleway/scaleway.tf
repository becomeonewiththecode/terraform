provider "scaleway" {
	organization 	= "4faab35d-2ca7-41e8-923e-5ed180383601"
        token		= "923909c3-39d2-414d-a6c7-306ea17af849"
        region		= "ams1"
}

data "scaleway_image" "ubuntu" {
	architecture	= "x86_64"
	name		= "Ubuntu Precise"
}

resource "scaleway_volume"  "srv1-volume" {
	name		= "srv1-volume"
	size_in_gb	= 50
	type		= "l_ssd"
}

resource "scaleway_server" "srv1" {
	name		= "srv1"
  	image		= "${data.scaleway_image.ubuntu.id}"
	type		= "C2S"
	#type		= "VC1S"
	dynamic_ip_required	= public_ip

	#volume {
	#  size_in_gb	= 50
	#  type		= "l_ssd"
	#}
}

resource "scaleway_volume_attachment" "srv1" {
	server		= "${scaleway_server.srv1.id}"
	volume		= "${scaleway_volume.srv1-volume.id}"
}
