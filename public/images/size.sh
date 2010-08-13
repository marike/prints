#!/bin/bash

FILES="/Users/marike/Desktop/joan_images/"  
FILENAME1 = "img"
FILENAME2 = ".jpg"
i = 0
for f in $FILES
do 

  # ruby size.rb "$filename1$i$filename2"  ruby size.rb "$filename1$i$filename2"  
	echo "$FILENAME1 $i $FILENAME2"
	i+=1
done

exit 0