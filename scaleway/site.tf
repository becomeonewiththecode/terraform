provider "scaleway" {
        region		= "ams1"
}

data "scaleway_image" "ubuntu" {
        architecture    = "x86_64"
        name            = "Ubuntu Precise"
}
