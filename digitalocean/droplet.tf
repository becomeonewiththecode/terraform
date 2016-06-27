# Set the variable value in *.tfvars file
# or using -var="digtoken=..." CLI option

# Configure the DigitalOcean Provider
provider "digitalocean" {
    token = "${var.digitaloceantoken}"
}

# Create a new Web droplet in the nyc2 region
resource "digitalocean_droplet" "test" {
    image = "ubuntu-14-04-x64"
    name = "terraform-test"
    region = "nyc2"
    size = "512mb"
}

provisioner "local-exec" {
	command = "echo ${~/repos/ansible/ansible-playbook common.yml}
}
