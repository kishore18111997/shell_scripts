#!/bin/bash

read -p "enter the first number(you can also use decimal value): " value1
read -p "enter the second number(you can also use decimal value): " value2

# Use awk to perform addition
sum=$(awk "BEGIN {print $value1 + $value2}")
diff=$(awk "BEGIN {print $value1 - $value2}")
mul=$(awk "BEGIN {print $value1 * $value2}")
div=$(awk "BEGIN {print $value1 / $value2}")
percentile=(awk "BEGIN {print $value1 % $value2}")

echo "The sum is: $sum"
echo "the difference is: $diff"
echo "the product is: $mul"
echo "the divided value: $div"
echo "percentile value: $percentile"
