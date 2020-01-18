#!/bin/bash

 # redirect stdout to a text file
 exec &> audio.info       

 # use -q so the contents of the text file are only vumeter data

 arecord -q -f cd -V mono /dev/null

 # removes extra symbols except percentages, 
 # I'm sure this can be consolidated if needed

cat audio.info | sed 's/#//g' | sed 's/ //g' | sed 's/|//g' | sed 's/+//g' | sed 's/[^[:print:]]//g' > new.info

 #resets stdout 
 exec &>/dev/tty

percents=$(cat new.info)

max="0";

 #breaks up the values with '%' as the delimiter

 IFS='%' read -ra values <<< $percents


 for i in "${values[@]}"; do

    if [ $i -gt $max ]
    then
        max=$i
    fi
done

echo "maximum amplitude = $max"

The for loop will find the max amplitude during your recording, but you can replace this with 

echo $i >> table.txt 
