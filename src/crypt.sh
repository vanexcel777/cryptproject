#!/bin/bash





#variables modifiables par l'utilisateur
DIR="/home/vanexcel/cryptproject/"
CLE_PR="private.pem"
CLE_PU="public.pem"
SUFFIX_CR=".crypt"
SUFFIX_DCR=".decrypt"
DIR_CLE="/home/vanexcel/cryptproject/key" 
CRYPT="/home/vanexcel/cryptproject/tocrypt"
CRYPTED="/home/vanexcel/cryptproject/crypted"
DECRYPT="/home/vanexcel/cryptproject/todecrypt"





#verification si  les clés sont déjà générées

python3 ${DIR}/src/generate_key.py ${DIR_CLE}/${CLE_PR} ${DIR_CLE}/${CLE_PU}

if [ -f ${DIR_CLE}/${CLE_PR} ] && [ -f ${DIR_CLE}/${CLE_PU} ]
then
	key=0
else 
	python3 ${DIR}/src/generate_key.py ${DIR_CLE}/${CLE_PR} ${DIR_CLE}/${CLE_PU}
	if [ -f ${DIR_CLE}/${CLE_PR} ] && [ -f ${DIR_CLE}/${CLE_PU} ]
	then 
		key=0
	else 
		echo "le key ne fonctionne pas "
		key= 1
	fi 
fi



if [ $key -eq 0 ]
then
	while IFS=$'\n' read file
	do	
		#verifie si le fichier est déjà encrypté
		if  [ -f $file ]
        	then
        		echo " inserer un fichier text dans $CRYPT"
        		break
        	fi

		encrypt=0
		while IFS=$'\n' read crypt_file
		do
			#verifie si le fichier est déjà encrypté
			if  [ -f $crypt_file ]
			then	
				break
				
			else 
				CRYPT_FILE="${crypt_file:0:-${#SUFFIX_CR}}"
				if [ "$file" = $CRYPT_FILE ]
				then
					encrypt=1
					echo " le fichier est deja crypté"
				fi		
			fi

		done <<<$(ls ${CRYPTED}/)

		if [ $encrypt -eq 0 ]
		then
			echo "Cryptage du ficher "
			python3 ${DIR}/src/crypt.py ${CRYPT}/${file} ${CRYPTED}/${file}${SUFFIX_CR} ${DIR_CLE}/${CLE_PR} ${DIR_CLE}/${CLE_PU}
			
			cp ${CRYPTED}/${file}${SUFFIX_CR} ${DECRYPT}/${file}${SUFFIX_DCR}
		fi
	done <<<$(ls ${CRYPT}/ ) 
fi
