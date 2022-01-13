# NAT Gateway

AWS managed. 

Need to operate in a public subnet. 

Uses Elastic IPs (static, public).

AZ resilient, for HA need 1 NATGW in each AZ.

Use route table to associate instances in private subnets with NATGW in public subnet. 

Don't work with IPv6 (because seriously, why would they?)