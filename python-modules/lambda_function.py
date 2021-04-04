import boto3
import uuid


def lambda_handler(event, context):   
    print ("Authentication successful")
    print ("Trigger function =", event['triggerSource'])
    print ("User pool = ", event['userPoolId'])
    print ("App client ID = ", event['callerContext']['clientId'])
    print ("User ID = ", event['userName'])


    print('success')
    dynamoDB = boto3.resource("dynamodb")
    table = dynamoDB.Table("User-lcy2imcsnnbrdoarmpv4ndhdsy-dev") # DynamoDBのテーブル名

    # DynamoDBへのPut処理実行
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
