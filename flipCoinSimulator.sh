n=2
h=0
t=0
flips=1
diff=0

while [[ $h -lt 21 && $t -lt 21 ]]
do
      coin=$((RANDOM%2))

        if [[ $coin -eq 1 ]]
        then
        h=$(($h+1))
        echo "Heads"
        else
        ((t++))
        tcount+=1
        echo "Tails"
        fi
        ((flips++))
done
     

if [[ $h -eq 21 ]]
then
   diff=$(($h-$t))
	echo "head $h tail $t"
   echo "Head won by $diff points."
elif [[ $t -eq 21 ]]
then
   diff=$(($t-$h))
  echo "head $h tail $t"

   echo "Tail won by $diff points."
else
   echo "It's a Tie by scoring $h-$t by each."
   while [[ $diff -lt 2 ]]
   do
      coin=$((RANDOM%2))

        if [[ $coin -eq 1 ]]
        then
        h=$(($h+1))
        echo "Heads"
        else
        ((t++))
        echo "Tails"
        fi
        diff=$(($h-$t))
	echo "diff is $h-$t=$diff"
   done

fi

