n=2
h=0
t=0
flips=1

      coin=$((RANDOM%2))

        if [[ $coin -eq 1 ]]
        then
        h=$h+1
        hcount+=1
        else
        t=$t+1
        tcount+=1
        fi
        flips+=1

if [[ $hcount -eq 1 ]]
then
        echo " Heads  "
else
        echo " Tails "
fi
