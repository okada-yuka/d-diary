import boto3


def lambda_handler(event, context):   
    print ("Authentication successful")
    print ("Trigger function =", event['triggerSource'])
    print ("User pool = ", event['userPoolId'])
    print ("App client ID = ", event['callerContext']['clientId'])
    print ("User ID = ", event['userName'])


    print('success')
    dynamoDB = boto3.resource("dynamodb")
    table = dynamoDB.Table("table-name") # DynamoDBのテーブル名

    # DynamoDBへのPut処理実行
    table.put_item(
      Item = {
        "PartitionKey": event['userName'], # Partition Keyのデータ
        "SortKey": event['triggerSource'], # Sort Keyのデータ
        "OtherKey": event['userPoolId']  # その他のデータ
      }
    )

    # Return to Amazon Cognito
    return event
