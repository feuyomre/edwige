#!/bin/bash
echo "BIENVENUE SUR MON PROJET <sysInterogeant>"
echo "faite  votre choix sur ce menu .........."

# fonctions pour le  menu affichage  au niveu de l acceuil
#argument ou parametre 
## args: $1  titre du menu
#######  $2n une fonction de longueur n
#######  $2n+1   incrementation de la fonction bn a  un parametre pour
#######           faire varier nos parametre de choix allant de 1 a n

### fonction globale  qui vont m aider a generer mon menu

Menu() {
         local -1 mon_memu  fonc
         local  tritre choix
if [[$(( $# % a)) -ne 0 ]] ; then
     echo "$ 0 - ce chiffre ne fait pa partir du menus presenter " >&2
     return 1
fi
 titre+ "$1"
 shift 1
 set "$@" return 0 " "sortie"
while [[ $# -gt 0 ]] ; then
  do 
     ((choix += 1 )) 
     fonc[$choix] = "$1"
     mon_menu[$choix]="$2"
    shift 2
  done

############# affichage de mon menu

   ps3= "  faite un choix  ? "
   while : 
             do 
                   echo [[ -n "$mon_titre" ]] && -e "$mon_titre\n"
                         select choix in "${mon_menu[@] }"
                    do 
                       if  [[ -z "$choix" ]]
                         them echo -e "\ choix invalide "
                        else eval ${ fonc[$REplay]}

                        fi
                     break 
                    done || break
  done
}
####################### 
#######     fonction qui affiche  les infos sur des utilisateurs enregistrer 
###############il ya 3 jrs
 

CHome()
{
   echo -e "\n***\n*** CHome\n***\n"
	echo "bienvenu chez nous"
}


# CEtcRoot -la fonction qui permet l'aquisition installation

CEtcRoot()
{
   echo -e "\n***\n*** CEtcRoot\n***\n"
   sudo dpkg --configure -a 
   sudo apt-get install xamp
   sudo /xamp/xamp start
}

GHome()
{

echo -e "\n***\n*** CHome\n***\n"
 cut -d " : " -f1 /etc/passwd && $(find . mtime -3 - print)

 
}

# GEtcRoot - information sur l'utilisation du disque ,de la memoire du processeur et de la swap

GEtcRoot()
{
   echo  -e "\n***\n*** information sur user du disque\n***\n"
    vmstart
}
# mon menu
Menu \
           " Bienvenu sur mon projet SysInterogeant produire par feuyo"\
  CHome    "information sur l'utilisateur enregisteré il y a trois jours"\
  CEtcRoot "Acqusititon installation et lancement de l'environnement xamp"\  GHome    "Archivage des elements du repertoire personnel qui ont ete modifier pour l'utilisateur sudoer il ya deux jour dans un periferique externe" \
  GEtcRoot  "information sur l'utilisateur du disque ,de la memoire du processeur et de la swap"\

