#!/bin/bash

SECURITY_GROUP_FILE="otolane-security-groups.txt"

while IFS= read -r SG_ID
do
  echo "Processing Security Group ID: $SG_ID"
  
  # Ingress (Inbound) Rules
  echo "Inbound Rules for Security Group: $SG_ID" are:
  aws ec2 describe-security-groups --group-ids "$SG_ID" --query "SecurityGroups[*].IpPermissions[*].[FromPort, ToPort]" --output table
  
  echo "---------------------------------------------"
done < "$SECURITY_GROUP_FILE"
