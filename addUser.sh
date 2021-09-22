#Script that will create users based off a CSV
#/!bin/bash

COUNT=0 #Start counter at 0
while IFS=, read -r  username first last gender dob language bloodtype zodiac constellations planets tvgenre dino;
do
        if [ $COUNT -le 500 ] #If the counter is less than or equal to 500
        then
                password="Pass123" #Creates a basic password
                echo $username #Displays the current user
                useradd "$username" -d "/home/$username" -s /bin/bash -p "{$password}" #Creates user directory and assigns the basic password
                ((COUNT++))
        fi
        if [ $COUNT -ge 500 ] && [ $COUNT -lt 1001 ] #If counter is great than and is less than 1001
        then
                password="Pass123"
                useradd "$username" -c "$first $last" -d "/home/$username" -s /bin/bash -p "{$password}" 
        fi
done < mkeit013.csv
