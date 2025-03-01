import json
import boto3

dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('UserTable')

def lambda_handler(event, context):
    if event['httpMethod'] == 'POST':
        body = json.loads(event['body'])
        table.put_item(Item=body)
        return {
            'statusCode': 200,
            'body': json.dumps('Item added')
        }
    elif event['httpMethod'] == 'GET':
        response = table.scan()
        return {
            'statusCode': 200,
            'body': json.dumps(response['Items'])
        }