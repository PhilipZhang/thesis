#!/bin/bash
for((index=10,index2=1;index<=29;index++,index2++))
do
	# mv ./PC2804${index}.JPG ./sample3_${index2}.jpg
	 convert ./sample3_${index2}.jpg -resize %5 ./sample3_${index2}.jpg
done

