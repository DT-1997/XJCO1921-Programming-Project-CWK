#!/bin/bash

# I break my sections of tests up with a couple of linebreaks and a title

echo -e "\n~~Argument Tests ~~"

# I use an echo to explain the purpose of each test
# the -n means 'print the next thing on the same line'
# which makes it easier to read the output

echo -n "Testing no arguments - "

./maze > tmp

# And now I search to make sure the right print came out

if grep -q "Usage: maze <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi
