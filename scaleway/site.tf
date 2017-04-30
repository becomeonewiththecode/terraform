provider "scaleway" {
#	organization 	= "4faab35d-2ca7-41e8-923e-5ed180383601"
#        token		= "923909c3-39d2-414d-a6c7-306ea17af849"
        region		= "ams1"
}

data "scaleway_image" "ubuntu" {
        architecture    = "x86_64"
        name            = "Ubuntu Precise"
}
