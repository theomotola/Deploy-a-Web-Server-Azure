# AZURE INFRASTRUCTURE OPERATIONS: Deploy-a-Web-Server

## Introduction

The infrastructure as code gives us a huge advantage in defining, deploying, updating and destroying our infrastructure. So to set up an image which contains our application for repeatable deployments, we will use packer to create the virtual machine images(in JSON format).

Terraform also expands on this by not only deploying virtual machines but also storage, networking and security entities across multiple infrastructures, clouds and vendors.

Based on these, this project will use a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

## Getting Started

1. Clone this repository
2. Create your infrastructure as code
3. Create your tagging-policy in Azure
4. Create your resource group in Azure

## Dependencies

1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

## Deploy a Policy
Before we get started, we want to create a policy that ensures all indexed resources are tagged. This will help us with organization and tracking, and make it easier to log when things go wrong.

## Instructions

Once you've  collected your dependencies, to deploy the scalable web server in Azure we need: 



export ARM_CLIENT_ID=1d822286-b2a3-45bd-bebf-9bd9f719bbc5
export ARM_CLIENT_SECRET=6GNB5c5p_5H.-odi_zffakesecret
export ARM_SUBSCRIPTION_ID=850c12f5-152f-4692-a8e9-2a5d3b9f39db

1. Deploy the packer image
2. Deploy the infrastructure with Terraform template

### :pushpin: Deploy the Packer Image

Packer is a server templating software. It will deploy virtual machines images. After deploying the virtual machines with the help of packer template, ensure the packer images are deleted as it does not maintain the state.
