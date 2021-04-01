import boto3

def lambda_handler(event, context):
    print('success')
    dynamoDB = boto3.resource("dynamodb")
    table = dynamoDB.Table("table-name") # DynamoDBのテーブル名

    # DynamoDBへのPut処理実行
    table.put_item(
      Item = {
        "PartitionKey": "your-partition-key-data", # Partition Keyのデータ
        "SortKey": "your-sort-key-data", # Sort Keyのデータ
        "OtherKey": "your-other-data"  # その他のデータ
      }
    )
