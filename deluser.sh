#Very simple script that will delete any users that have a blood type of O
#/!bin/bash
while IFS=, read -r  username first last gender dob language bloodtype zodiac constellations planets tvgenre dino; #CSV Headers
do
        if [ $bloodtype == "o" ] #Will check if columns has an o 
        then
                userdel $username #Deletes user
                echo $username was deleted
        fi
done < mkeit013.csv