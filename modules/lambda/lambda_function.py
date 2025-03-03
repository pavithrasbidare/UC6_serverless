import json
import boto3

def lambda_handler(event, context):
    print("Event: ", json.dumps(event))  # Log the event object for debugging
    table_name = 'UserTable'
    dynamodb = boto3.resource('dynamodb')
    table = dynamodb.Table(table_name)
    
    if 'httpMethod' in event and event['httpMethod'] == 'GET':
        if 'pathParameters' in event and 'userId' in event['pathParameters']:
            user_id = event['pathParameters']['userId']
            response = table.get_item(Key={'UserId': user_id})
            item = response.get('Item', {})
            
            return {
                'statusCode': 200,
                'body': json.dumps(item)
            }
        else:
            return {
                'statusCode': 400,
                'body': json.dumps({'message': 'Missing userId in path parameters'})
            }

    return {
        'statusCode': 400,
        'body': json.dumps({'message': 'Unsupported method'})
    }