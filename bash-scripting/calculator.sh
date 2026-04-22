#!/bin/bash

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

add=$((num1 + num2))
sub=$((num1 - num2))
mul=$((num1 * num2))

if [ "$num2" -ne 0 ]; then
    div=$((num1 / num2))
else
    div="Cannot divide by zero"
fi

echo "Results:"
echo "$num1 + $num2 = $add"
echo "$num1 - $num2 = $sub"
echo "$num1 * $num2 = $mul"
echo "$num1 / $num2 = $div"
