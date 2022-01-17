## Simple Routing

```www > A > 1.2.3.4, 1.2.3.5, 1.2.3.5```
- no health checks
- if multiple values are used, records are returned randomly


## R53 Health Checks

## Failover Routing
- primary
- secondary - failover, for out of band failure/maintenance page

<hr>

## Multi Value Routing
```
www A 1.2.3.4
www A 1.2.3.5
www A 1.2.3.6
```
- many records with same name pointing to different endpoints
- uses health checks, if endpoint is down, will return remaining ones (random)

<hr>

## Weighted Routing
```
www 40(%) A 1.2.3.4
www 40(%) A 1.2.3.5
www 20(%) A 1.2.3.6
```
<hr>

## Latency Routing
```
www us-east-1 A 1.2.3.4
www us-west-1 A 1.2.3.5
www eu-west-1 A 1.2.3.6
```
Can be combined with health checks.

<hr>

## Geolocation Routing
- country
- continent
- default (catch all for no match)

Matches request location to resource location.

<hr>

## Geoproximity Routing
Calculates physical distance between request and resource. 

<strong>Bias</strong> can increase or decrease region "size".