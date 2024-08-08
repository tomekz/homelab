# 0 Bootsrap servers

The goal of this stage is to provision underlying infrastructure to deploy a Kubernetes cluster. 
This includes setting up the physical servers, configuring the network, and installing the necessary software.


## servers 

The homelab consists of three Dell OptiPlex servers, each with the following specifications:

- Dell Optiplex 7040 Desktop PC Mini
- Intel Core i5-6400T, 
- 8GB DDR4 RAM 
- 240GB SSD

## network configuration

The servers are connected to a local network switch with a static IP address assigned to each one.
A cloudflare tunnel is used to expose services to the internet.
