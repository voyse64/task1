#!/bin/bash

min=10000
max=100000

mkdir ./Temp

for file in $(find ./ -name "*" -type f)
do

filesize=$(stat $file -c %s)

if [ -f $file ]
then
echo "Размер файла" $file " = " $filesize
if [ $filesize -gt $min ]
then
if [ $filesize -lt $max ]
then
cp $file ./Temp/
fi
fi
fi
done

cd ./Temp
ls -l | sort -n
rm -r ../Temp


  	 

