{
	"variables": {
		"client_id": "{{env `ARM_CLIENT_ID`}}",
		"client_secret": "{{env `ARM_CLIENT_SECRET`}}",
		"subscription_id": "{{env `ARM_SUBSCRIPTION_ID`}}"
	},
	"builders": [
		{
			"type": "azure-arm",
			"client_id": "{{user `client_id`}}",
			"client_secret": "{{user `client_secret`}}",
			"subscription_id": "{{user `subscription_id`}}",
			"os_type": "Linux",
			"image_publisher": "Canonical",
			"image_offer": "UbuntuServer",
			"image_sku": "18.04-LTS",
			"managed_image_resource_group_name": "udacity-rg",
			"managed_image_name": "PackerImage",
			"azure_tags": {
				"environment": "testing"
			},
			"location": "Australia East",
			"vm_size": "Standard_D2s_v3"
		}
	],
	"provisioners": [
		{
			"inline": [
				"echo 'Hello, World!' > index.html",
				"nohup busybox httpd -f -p 80 &"
			],
			"inline_shebang": "/bin/sh -x",
			"type": "shell"
		}
	]
}
