#questi

# next part
#!/bin/bash

found=0
counter=0
echo "Enter input"
read user_input
echo "Your ballot is ${USER_INPUT}"


#sol 1
for i in `cat a2winners.txt`

do
	((counter++))

	if (( user_input == i )) && (( counter != 6 ))
	
	then 
		echo " congrats you match a regular ball"
	
		((found++))

	elif (( user_input == i )) && (( counter == 6)) 

	then 
		((found++))

		echo "congrats you match the bounus ball"

	
	fi


done

if (( found == 0 ))
then 
	echo "no match"
fi


