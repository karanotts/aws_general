import json
import boto3

s3 = boto3.client('s3')

def lambda_handler(event, context):

    response = s3.list_buckets()

    # Output the bucket names
    print('Existing buckets:')
    for bucket in response['Buckets']:
        print(f'{bucket["Name"]}'