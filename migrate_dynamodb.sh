#!/bin/bash

if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
else
    echo ".env file not found!"
    exit 1
fi

if [[ -z "$SOURCE_TABLE" || -z "$DEST_TABLE" || -z "$AWS_REGION" ]]; then
    echo "Missing required environment variables: SOURCE_TABLE, DEST_TABLE, or AWS_REGION"
    exit 1
fi

# Export data from source table to a JSON file
echo "Exporting data from $SOURCE_TABLE..."
aws dynamodb scan --table-name "$SOURCE_TABLE" --region "$AWS_REGION" --output json > existing_dynamo_data.json

if [ $? -ne 0 ]; then
    echo "Failed to export data from $SOURCE_TABLE"
    exit 1
fi

# Import data to destination table
echo "Importing data to $DEST_TABLE..."
jq -c '.Items[]' existing_dynamo_data.json | while read -r item; do
    aws dynamodb put-item --table-name "$DEST_TABLE" --region "$AWS_REGION" --item "$item"
done

if [ $? -ne 0 ]; then
    echo "Failed to import data to $DEST_TABLE"
    exit 1
fi

echo "Migration completed successfully from $SOURCE_TABLE to $DEST_TABLE"
