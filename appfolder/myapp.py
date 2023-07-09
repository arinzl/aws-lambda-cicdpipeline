import os
import json
import boto3

# Environment Variables
apiurl_keylocation = os.environ.get('APIURL_KEYLOCATION')
# print(apiurl_keylocation)

def lambda_handler(event, context):
    ssm_client = boto3.client('ssm')
    URL_LOCATION = ssm_client.get_parameter(Name=apiurl_keylocation, WithDecryption=False)['Parameter']['Value']

    print(URL_LOCATION)

    # TODO implement further business logic
    return {
        'statusCode': 200,
        'body': json.dumps(URL_LOCATION)
    }
