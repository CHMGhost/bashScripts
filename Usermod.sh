#Simple script that will first check username for their UID
# If it is between 1000 and 2000. It will add thier date of birthday to the comment section
# Next if the user has a UID higher than 2000. It will add that user to a secondary group

#/!bin/bash

while IFS=, read -r  username first last gender dob language bloodtype zodiac constellations planets tvgenre dino; #CSV Header
do
CURRENT_USER=$(id -u $username) #Stores current user UID. POssible future feature?
        if  [ $(id -u $username) -le 2000 ] && [ $(id -u $username) -ge 1000 ] #Checks user UID
        then
                usermod -c "$dob" $username #Adds date of birthday to user comment
                echo Adding comment to $username
        else
                usermod -a -G $planets $username #Adds user to planets as a secondary group
                echo $username is being added to $planets group
        fi
done < mkeit013.csv

