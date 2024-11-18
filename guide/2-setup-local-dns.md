I'm using cloudflare for DNS.
It can resolve the domain names to the local IP addresses of the servers. 
This is useful for accessing services running on the cluster from within the local network.

It requires to have your public domain name registered with cloudflare and the DNS records managed by cloudflare.

Example of the DNS records in cloudflare:

```
A  tomekz.party INGRESS_LOAD_BALANCER_IP
CNAME  *.tomekz.party
```

where `INGRESS_LOAD_BALANCER_IP` is the `external-ip`of the istio gateway LoadBalancer kubernetes service
