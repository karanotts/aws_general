# VPC Considerations
- Size
- Network interactions (IP ranges, peerings etc)
- Structure (tiers - public, private; AZs)




| VPC SIZE | NETMASK | SUBNET SIZE | SUBNETS PER VPC | HOSTS PER SUBNET | TOTAL IPS |
|----------|---------|-------------|-----------------|------------------|-----------|
| micro | /24 | /27 | 8 | 27 | 216 |
| small | /21 | /24 | 8 | 251 | 2008 |
| medium | /19 | /22 | 8 |1019 | 8152 |
| large | /18 | /21 | 8 | 2043 | 16344 |
| xlarge | /16 | /20 | 16 | 4091 | 65456 |


# 

IPv4 Private and Public
- 1 primary private block
    - min `/28` to max `/16`
Optional IPv6 `/56`

`enableDnsHostnames` - DNS for instances

`enableDnsSupport` - DNS resolution in VPC

# Subnet IP Addressing

Reserved IPs:
- network address: .0 - 10.0.0.`0`
- VPC router: .1 - 10.0.0.`1`
- DNS reserved: .2 - 10.0.0.`2`
- future use: .3 - 10.0.0.`3`
- broadcast: .255 - 10.0.0.`255`


# VPC Router
- routes traffic between subnets
- controlled by route tables
- every VPC has default main route

# Internet Gateway (IGW)
- region resilient
- 1 per VPC
- AWS managed
1. Create IGW
2. Attach IGW to VPC
3. Create custom RT 
4. Associate RT with (public) subnets 
5. Add default routes to IGW (destination `0.0.0.0/0` > target IGW, destination `::0` > target IGW)
6. Enable auto-assign public IPv4 address on (public) subnets