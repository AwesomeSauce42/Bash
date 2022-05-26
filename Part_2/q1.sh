#!/bin/bash
choice='Y'

rm emp.list
while [[ ($choice == 'Y' || $choice == 'y') ]]
do

	echo Do Entry: 
	read var
	touch emp.list
	echo $var >> emp.list
	for i in $var
	do
		echo $i
	done
	echo "Continue?"
	read choice

done



#OPTIONS
List() {
	echo Enter no. of search lines: 
	read num
	head -$num emp.list

}

Average() {
	count=0
	total=0

	echo Enter department:
	read department


	for i in $( grep -w "$department" emp.list | awk 'BEGIN { FS = "|" } {print $6;}' )
   	do 
    	total=$(echo $total+$i | bc )
    	let count=$count+1
   	done
	echo "scale=2; $total / $count" | bc
}

Birth() {
	echo Enter the BDAY:

	sort -t"|" -k -r 5.7,5.8 emp.list

}

Same() {
	echo Enter Designation:
	read designation
	IFS='|'
	grep -w "$designation" emp.list | awk 'BEGIN { FS = "|" } {print $2;}'

}

Extract() {
	choice='Y'
	while [[ ($choice == 'Y' || $choice == 'y') ]]
	do
		echo "Enter Option: emp-id=a name=b designation=c department=d DoB=e Salary=f"
		read opt

		emp_id() {
			echo "EMP_ID:"
			awk 'BEGIN { FS = "|" } ; {print $1}' emp.list
		}
		name() {
			echo "Name: "
			awk 'BEGIN { FS = "|" } ; {print $2}' emp.list
		}
		designation() {
			echo "Designation: "
			awk 'BEGIN { FS = "|" } ; {print $3}' emp.list
		}
		department() {
			echo "Department: "
			awk 'BEGIN { FS = "|" } ; {print $4}' emp.list
		}
		dob() {
			echo "DoB: "
			awk 'BEGIN { FS = "|" } ; {print $5}' emp.list
		}
		salary() {
			echo "Salary:"
			awk 'BEGIN { FS = "|" } ; {print $6}' emp.list
		}

		case $opt in
			a) emp_id ;;
			b) name ;;
			c) designation ;;
			d) department ;;
			e) dob ;;
			f) salary ;; 
		esac
		echo "Continue?"
		read choice
	done

}

choice='Y'
while [[ ($choice == 'Y' || $choice == 'y') ]]
do

	echo "Whatchu wanna do son?"
	read opt

	case $opt in
		a) List ;;
		b) Average ;;
		c) Birth ;;
		d) Same ;;
		e) Extract ;; 
	esac
	echo "Continue?"
	read choice

done