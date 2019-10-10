for line in wages.csv
do
 cat $line | cut -d , -f 1,2 | tr ',' ' ' | sort -k1 sort -k2,2n > exercise5.txt
done
