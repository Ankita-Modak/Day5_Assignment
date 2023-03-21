
#!/bin/bash

# generate 5 random 2-digit numbers and store them in an array
for (( i=0; i<5; i++ ))
do
  num=$((RANDOM % 90 + 10))
  arr[$i]=$num
done

# Sum
sum=0
for i in "${arr[@]}"
do
  sum=$((sum + i))
done

# Average
avg=$(($sum / 5 | bc))

echo "Randomly generated numbers: ${arr[@]}"
echo "Sum: $sum"
echo "Average: $avg"
