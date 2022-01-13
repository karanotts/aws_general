zip lambda_function.zip lambda_function.py

aws lambda create-function \
--region us-east-1 \
--function-name "ListS3Buckets" \
--runtime "python3.8" \
--role "<ROLE ARN>" \
--handler "lambda_function.lambda_handler" \
--zip-file fileb:///home/user/lambda_function.zip

aws lambda update-function-configuration \
--region us-east-1 \
--function-name "ListS3Buckets" \
--description "Creating our S3 function via CLI." \
--timeout 5 \
--memory-size 256