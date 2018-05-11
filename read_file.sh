counter=1
while read -r line
do
  if [ $counter -eq 8 ]
  then
    wait
    counter=1;
  else
    source `pwd`/resize.sh 2000 $line $2 &
    counter=$((counter+1))
  fi
done < "$1"