n=2
h=0
t=0
flips=1
for((i=0; i<20; i++))
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
        flips+=1
done


echo "Head won $h times."
echo "Tail won $t times."

