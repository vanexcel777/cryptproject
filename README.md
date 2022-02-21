# cryptproject
la on doit crypter un message a un ami et que l'autre personne a qui a on doit envoyer le message puisse le lire a l'aide d'un cle 

## but du projet cryptproject
john veut envoyer un message a dodo pour que les autres n'arrivent pas a voir le message .
pour que john puisse le faire il doit d'abord crypter le message et generer des cles et ensuite donnez les cles a dodo afin qu'il puissent lire le message 
- cle publique, donc au depart john envoie un cle publique a dodo afin dodo puisse chiffrer les messages qu'il envoye a John 
- cle prive ,john conserve ce cle afin qu'il puisse lire le message crypter de dodo avec sa cle publique
- donc john peut distribuer sa cle publique  a autant de gens qu'il le souhaite ,donc ce cle sert a chiffrer les messages qu'il envoye .  

## installer le module Crypto

### installer python3
      sudo apt-get install python3 

### installer crypto 

sudo apt-get python3-crypto  

### git le projet 

   git clone https://github.com/vanexcel777/cryptproject.git
   
### installer des fichier dans cryptproject

tout d'abord on va dans le dossier cryptproject
 cd cryptproject/
 
 et on installe les 5 fichiers (tocrypt,crypted,todecrypt,decrypted,key)
 mkdir tocrypt
 mkdir todecrypt
 mkdir decrypted
 mkdir todecrypt
 mkdir key
 
 ### Mettre le message coder sur le dossier tocrypt
 
 tout d'abord allez dans le fichier tocrypt 
 
 cd cryptproject/tocrypt
 
 creer un fichier text (ex: code.txt)
 
 touch code.txt
 
 on ecrit le message dans le fichier text (code.txt)
 
 ### donnez le droit d'execution au script 
 
 allez dans le fichier source (src)
 
 cd cryptproject/src 
 
 droit d'execution :
 
 chmod +x crypt.sh
 chmod +x decrypt.sh
 
 ## la le module se met en execution 
 
 ## donnez le droit d'execution au script 
 allez dans le fichier cryptproject
 cd cryptproject/
 
 droit d'execution :
 chmod +x install.sh
 chmod +x unstall.sh 
 
## install 
commencement du cryptage de message

cd cryptproject/
./install.sh

### cryptage de message 
sudo systemtl status crypt.sh.service 

### decryptage de message

sudo systemctl status decrypt.service

### unstall

cd cryptproject/
./unstall.sh








 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 









