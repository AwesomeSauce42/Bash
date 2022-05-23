echo Enter number: 
read n

prod=1

for i in $(seq 2 $n)
do

	prod=$((prod * i))
done
echo $prod
