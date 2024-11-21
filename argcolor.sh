#!/bin/bash

# Check if argument is passed
if [ "$1" == "1" ]; then
    # Print in red color
    echo -e "\033[31mRED\033[0m"
else
    # Print without color
    echo "NO COLOR"
fi
