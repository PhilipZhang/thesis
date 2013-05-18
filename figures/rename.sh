#!/bin/bash
for((index=30,index2=1;index<=41;index++,index2++))
do
	# mv ./PC0403${index}.JPG ./sample2_${index2}.jpg
	 convert ./sample2_${index2}.jpg -resize %5 ./sample2_${index2}.jpg
done

