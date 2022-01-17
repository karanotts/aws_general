# CloudFront

Content Devlivery Network. 

<b>origin</b> - source of content (S3 or Custom)

<b>distribution</b> - cloudfront configuration unit

<b>edge location</b> - local cache of content

<b>regional edge cache</b> - large local caches


<br>

`cache hit` - requested content already exists in cache and can be server immediately

`cache miss` - content not in cache and has to be fetched (`origin fetch`) then cached for future requests


## TTL and invalidations
- default TTL - 24h 
- can define per object TTL value
    - Origin headers:
        - `Cache-Control max-age` - apply TTL value in seconds
        - `Cache-Control s-maxage` - apply TTL value in seconds
        - `Expires` - apply TTL deadline, as date and time
    - Custom origin (object medatada)
- <b>cache invalidation</b> - mark content as stale 
    - costly, use in emergency only
- versioned file names are best for marking S3 content as valid/stale


## SSL
Default - CloudFront Default Domain Name (CNAME), supported by default SSL

Alternate Domain Names (CNAME):
- verify ownership
- import certificate via ACM (AWS Certificate Manager) - always in `us-east-1`
- HTTP and HTTPS, HTTP => HTTPS, HTTPS only
- <b>two valid certs are needed</b> - viewer to CloudFront <b>and</b> CloudFront to Origin

## SNI
Server Name Indication


## Origin Types
- S3 bucket
- EC2 instance
- Elastic Load Balancer