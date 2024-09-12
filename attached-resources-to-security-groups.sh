#!/bin/bash

SECURITY_GROUP_FILE="otolane-security-groups.txt"

while IFS= read -r SG_ID
do
  echo "Processing Security Group ID: $SG_ID"
  
  # EC2 Instances
  echo "Checking EC2 Instances attached to Security Group: $SG_ID"
  aws ec2 describe-instances --filters "Name=instance.group-id,Values=$SG_ID" --query "Reservations[*].Instances[*].[InstanceId,PrivateIpAddress]" --output table

  # Classic Load Balancers
  echo "Checking Classic Load Balancers attached to Security Group: $SG_ID"
  aws elb describe-load-balancers --query "LoadBalancerDescriptions[?contains(SecurityGroups, '$SG_ID')].[LoadBalancerName]" --output table

  # Application/Network Load Balancers (ALB/NLB)
  echo "Checking ALB/NLB attached to Security Group: $SG_ID"
  aws elbv2 describe-load-balancers --query "LoadBalancers[?contains(SecurityGroups, '$SG_ID')].[LoadBalancerName]" --output table

  # RDS Instances
  echo "Checking RDS Instances attached to Security Group: $SG_ID"
  aws rds describe-db-instances --query "DBInstances[?VpcSecurityGroups[?VpcSecurityGroupId=='$SG_ID']].[DBInstanceIdentifier]" --output table

  # ElastiCache Clusters
  echo "Checking ElastiCache Clusters attached to Security Group: $SG_ID"
  aws elasticache describe-cache-clusters --query "CacheClusters[?SecurityGroups[?SecurityGroupId=='$SG_ID']].[CacheClusterId]" --output table

  # Network Interfaces (ENI)
  echo "Checking Network Interfaces attached to Security Group: $SG_ID"
  aws ec2 describe-network-interfaces --filters "Name=group-id,Values=$SG_ID" --query "NetworkInterfaces[*].[NetworkInterfaceId,PrivateIpAddress,Attachment.InstanceId]" --output table

  echo "---------------------------------------------"
done < "$SECURITY_GROUP_FILE"
