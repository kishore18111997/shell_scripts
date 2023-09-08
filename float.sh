#!/bin/bash

value1=3.5
value2=2.25

# Use awk to perform addition
result=$(awk "BEGIN {print $value1 + $value2}")

echo "The sum is: $result"
