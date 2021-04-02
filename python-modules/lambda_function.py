import boto3


def lambda_handler(event, context):   
    print ("Authentication successful")
    print ("Trigger function =", event['triggerSource'])
    print ("User pool = ", event['userPoolId'])
    print ("App client ID = ", event['callerContext']['clientId'])
    print ("User ID = ", event['userName'])


    print('success')
    dynamoDB = boto3.resource("dynamodb")
    table = dynamoDB.Table("User") # DynamoDBのテーブル名

    # DynamoDBへのPut処理実行
    table.put_item(
      Item = {
        "username": event['userName'], 
        "goal": "未設定",
        "star": 0
      }
    )

    # Return to Amazon Cognito
    return event
