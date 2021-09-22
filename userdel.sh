#Simple script that will check the first letter of every entry under the CSV header language
#/!bin/bash
while IFS=, read -r  username first last gender dob language bloodtype zodiac constellations planets tvgenre dino; #CSV Header
do
        if [[ $language == a*  ]] #Only checks if the lanuage starts with the letter a
        then
                groupdel $language #Deletes group related to language
                echo $language removed
        fi
        if [[ $language == b*  ]] #Only checks if the lanuage starts with the letter b
        then
                groupdel $language
                echo $language removed
        fi
        if [[ $language == c*  ]] #Only checks if the lanuage starts with the letter c
        then
                groupdel $language
                echo $language removed
        fi
        if [[ $language == d*  ]] #Only checks if the lanuage starts with the letter d
        then
                groupdel $language
                echo $language removed
        fi
        if [[ $language == e*  ]] #Only checks if the lanuage starts with the letter e
        then
                groupdel $language
                echo $language removed
        fi
        if [[ $language == f*  ]] #Only checks if the lanuage starts with the letter f
        then
                groupdel $language
                echo $language removed
        fi
        if [[ $language == g*  ]] #Only checks if the lanuage starts with the letter g
        then
                groupdel $language
                echo $language removed
        fi
        if [[ $language == h*  ]] #Only checks if the lanuage starts with the letter h
        then
                groupdel $language
                echo $language removed
        fi
	if [[ $language == i*  ]] #Only checks if the lanuage starts with the letter i
        then
                groupdel $language
                echo $language removed
        fi
        if [[ $language == j*  ]] #Only checks if the lanuage starts with the letter j
        then
                groupdel $language
                echo $language removed
        fi
        if [[ $language == k*  ]] #Only checks if the lanuage starts with the letter k
        then
                groupdel $language
                echo $language removed
        fi
        if [[ $language == l*  ]] #Only checks if the lanuage starts with the letter l
        then
                groupdel $language
                echo $language removed
        fi
        if [[ $language == m*  ]] #Only checks if the lanuage starts with the letter m
        then
                groupdel $language
		echo $language removed
        fi


done < mkeit013.csv