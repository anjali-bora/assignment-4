#!/bin/bash -x

count=0
max=10
size=0
temp=0

while (( $count < $max ))
do
        number[$count]=$(( RANDOM%899 +100 ))
        ((count++))
done
echo ${number[@]}
size=${#number[@]}

for (( i=0; i<size; i++ ))
do
  for (( j=i+1; j<size; j++ ))
   do
    if [ ${number[i]} -gt ${number[j]} ]
    then
     temp=${number[i]}
     number[i]=${number[j]}
     number[j]=$temp
    fi

    if [ ${number[i]} -lt ${number[j]} ]
    then
     temp=${number[i]}
     number[i]=${number[j]}
     number[j]=$temp
   fi
   done
done

secondmini=${number[size-2]}
secondmax=${number[1]}

echo "second smallest number is : " $secondmini
echo "second largest number is : " $secondmax


