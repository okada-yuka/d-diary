import boto3
import uuid


def lambda_handler(event, context):   

    dynamoDB = boto3.resource("dynamodb")

    # DynamoDBのテーブル名
    table = dynamoDB.Table("User-p3h4kmdwhzhs5ot42h6sopskoe-dev")

    table.put_item(
      Item = {
        "id": str(uuid.uuid4()),
        "username": event['userName'], 
        "goal": "未設定",
        "star": 0
      }
    )

    # Return to Amazon Cognito
    return event
