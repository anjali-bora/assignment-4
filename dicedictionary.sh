#!/bin/bash -X

declare -A dice
number1=0
number2=0
number3=0
number4=0
number5=0
number6=0

occurance=0
while (( $occurance != 1 ))
do
digit=$(( 1 + RANDOM%6 ))

case $digit in
	    1) ((number1++))
	       dice[one]=$number1;;
	    2) ((number2++))
               dice[two]=$number2;;
	    3) ((number3++))
               dice[three]=$number3;;
	    4) ((number4++))
               dice[four]=$number4;;
	    5) ((number5++))
               dice[five]=$number5;;
	    6) ((number6++))
               dice[six]=$number6;;
esac

if (( ($number1==10) || ($number2==10) || ($number3==10) || ($number4==10) || ($number5==10) || ($number6==10) ))
then
   occurance=1
fi
done

max=0
min=10
for key in ${!dice[@]}
do
  echo $key : ${dice[$key]}

 if [ ${dice[$key]} -gt $max ]
 then
  max=${dice[$key]}
  maxkey=$key
 fi
 if [[ ${dice[$key]} -lt $min ]]
 then
   min=${dice[$key]}
   minkey=$key
 fi
done
echo "maximmun occured number is : " $maxkey
echo "minimmum occured number is : " $minkey
