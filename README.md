u# AZURE INFRASTRUCTURE OPERATIONS: Deploy-a-Web-Server

## Introduction

The ability to define, deploy, update, and delete infrastructure as code provides us a significant edge. So, to produce virtual machine images including our application for repeatable deployments, we will utilise packer (in JSON format).

Terraform takes this a step further by deploying not only virtual machines but also storage, networking, and security entities across numerous infrastructures, clouds, and vendors.

Based on these, this project will install a flexible, scalable web server in Azure using a Packer template and a Terraform template.

## Getting Started

1. Clone this repository
2. Create your infrastructure as code
3. Create your tagging-policy in Azure
4. Create your resource group in Azure

## Dependencies

1. Create an Azure Account
2. Install the Azure Command Line Interface [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install Packer
4. Install Terraform 

## Deploy a Policy
I created a policy that ensures all indexed resources are tagged. This will help us with organization and tracking, and make it easier to log when things go wrong.

## Instructions

Once you've  collected your dependencies, to deploy the scalable web server in Azure we need: 


export ARM_CLIENT_ID
export ARM_CLIENT_SECRET
export ARM_SUBSCRIPTION_ID

1. Deploy the packer image
2. Deploy the infrastructure with Terraform template

### :pushpin: Deploy the Packer Image

Packer is a server templating software. It will deploy virtual machines images. After deploying the virtual machines with the help of packer template, ensure the packer images are deleted as it does not maintain the state.

Lastly, I created and Updated Azure Resouces with Terraform Template

Specify the Variables 
To use the variables for my main.tf, I specifed the variables like below in my vars.tf file.
variable "environment"{
  description = "The environment should be used for all resources in this example"
  default = "test"
}
And in my main.tf, I can call the variables like
var.environment


