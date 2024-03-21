#!/bin/bash

# I break my sections of tests up with a couple of linebreaks and a title

echo -e "\n~~Argument Tests ~~"

# I use an echo to explain the purpose of each test
# the -n means 'print the next thing on the same line'
# which makes it easier to read the output

#Testing no arguments
echo -n "Testing no arguments - "
./maze > tmp
if grep -q "Usage: maze <filename> <width> <height>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing 4 arguments
echo -n "Testing 4 arguments - "
./maze x x x x > tmp
if grep -q "Usage: maze <filename> <width> <height>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing the range of 2 arguments
echo -n "Testing the range of 2 arguments - "
width = 10
height = 110
./maze x $width $height > tmp
if grep -q "The minimum value for width and height is 5 and the maximum value is 100";
then
    echo "PASS"
else
    echo "FAIL"
fi



echo -e "\n~~ File Handing~~"

echo -n "Testing bad filename - "
./maze fake.txt > tmp
if grep -q "Error: Bad filename" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

