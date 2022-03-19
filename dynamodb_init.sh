
aws dynamodb create-table \
    --table-name Example_Accounts \
    --attribute-definitions \
        AttributeName=KEY_ACCOUNT_UUID,AttributeType=S \
    --key-schema \
        AttributeName=KEY_ACCOUNT_UUID,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_Accounts_PhoneNumbers \
    --attribute-definitions \
        AttributeName=KEY_ACCOUNT_UUID,AttributeType=S \
    --key-schema \
        AttributeName=KEY_ACCOUNT_UUID,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_Accounts_PhoneNumberIdentifiers \
    --attribute-definitions \
        AttributeName=KEY_ACCOUNT_UUID,AttributeType=S \
    --key-schema \
        AttributeName=KEY_ACCOUNT_UUID,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_Accounts_Usernames \
    --attribute-definitions \
        AttributeName=KEY_ACCOUNT_UUID,AttributeType=S \
    --key-schema \
        AttributeName=KEY_ACCOUNT_UUID,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_DeletedAccounts \
    --attribute-definitions \
        AttributeName=KEY_ACCOUNT_E164,AttributeType=S \
    --key-schema \
        AttributeName=KEY_ACCOUNT_E164,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_DeletedAccountsLock \
    --attribute-definitions \
        AttributeName=KEY_ACCOUNT_E164,AttributeType=S \
    --key-schema \
        AttributeName=KEY_ACCOUNT_E164,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_IssuedReceipts \
    --attribute-definitions \
        AttributeName=KEY_STRIPE_ID,AttributeType=S \
    --key-schema \
        AttributeName=KEY_STRIPE_ID,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_Keys \
    --attribute-definitions \
        AttributeName=KEY_ACCOUNT_UUID,AttributeType=S \
    --key-schema \
        AttributeName=KEY_ACCOUNT_UUID,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_Messages \
    --attribute-definitions \
        AttributeName=KEY_PARTITION,AttributeType=S \
    --key-schema \
        AttributeName=KEY_PARTITION,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_PendingAccounts \
    --attribute-definitions \
        AttributeName=KEY_E164,AttributeType=S \
    --key-schema \
        AttributeName=KEY_E164,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_PendingDevices \
    --attribute-definitions \
        AttributeName=KEY_E164,AttributeType=S \
    --key-schema \
        AttributeName=KEY_E164,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_PhoneNumberIdentifiers \
    --attribute-definitions \
        AttributeName=KEY_E164,AttributeType=S \
    --key-schema \
        AttributeName=KEY_E164,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_Profiles \
    --attribute-definitions \
        AttributeName=KEY_ACCOUNT_UUID,AttributeType=S \
    --key-schema \
        AttributeName=KEY_ACCOUNT_UUID,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_PushChallenge \
    --attribute-definitions \
        AttributeName=KEY_ACCOUNT_UUID,AttributeType=S \
    --key-schema \
        AttributeName=KEY_ACCOUNT_UUID,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_RedeemedReceipts \
    --attribute-definitions \
        AttributeName=KEY_SERIAL,AttributeType=S \
    --key-schema \
        AttributeName=KEY_SERIAL,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_RemoteConfig \
    --attribute-definitions \
        AttributeName=KEY_NAME,AttributeType=S \
    --key-schema \
        AttributeName=KEY_NAME,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_ReportMessage \
    --attribute-definitions \
        AttributeName=KEY_HASH,AttributeType=S \
    --key-schema \
        AttributeName=KEY_HASH,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_ReservedUsernames \
    --attribute-definitions \
        AttributeName=KEY_PATTERN,AttributeType=S \
    --key-schema \
        AttributeName=KEY_PATTERN,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002

aws dynamodb create-table \
    --table-name Example_Subscriptions \
    --attribute-definitions \
        AttributeName=KEY_USER,AttributeType=S \
    --key-schema \
        AttributeName=KEY_USER,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --table-class STANDARD \
    --endpoint-url http://localhost:8002


