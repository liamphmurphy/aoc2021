#!/bin/bash

DAY=$1 # pass in the day as the first arg, such as "day01"
SOURCE_OF_TRUTH="day00"

mkdir $DAY

# a laze-tastic way of making the new solution directory
cp -R $SOURCE_OF_TRUTH/* $DAY
grep -lR "$SOURCE_OF_TRUTH" $DAY | xargs sed -i "s/$SOURCE_OF_TRUTH/$DAY/g"