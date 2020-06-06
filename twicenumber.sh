#!/bin/bash -x


reminder=0
index=0
reversenumber=0


for (( num=-1; num<=100; num++ ))
do
     if [ $num -gt 10 ]
     then
     reversenumber=0
     n=$num
     fi

     while [[ $n -ne 0 ]]
     do
     reminder=$(( $n%10 ))
     n=$(( $n/10 ))
     reversenumber=$(((reversenumber*10)+reminder))
     done



    if [ $num -eq $reversenumber ]
    then
	digit[$index]=$num
	index=`expr $index+1`
   fi
done

echo "twice digit number = " [ ${digit[@]} ]

