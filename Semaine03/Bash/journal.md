# Journal de bord du projet encadré



Nom du projet : Scripts Bash
Date : 21 oct 2026



## Ce que j'ai appris



Pour exécuter un shell script, il faut utiliser la commande chmod +x [nom de fichier] afin de lui donner les droits d'exécution.



Je travaille sous Mac OS. Je ne sais pas pourquoi la commande  ./[nom de fichier].sh ne fonctionnait pas. J'ai donc lancé le script avec la commande bash [nom de fichier].sh




Par ailleurs, le résultat n'était pas très beau à cause des espaces devant les nombres. J'ai donc fait des recherches sur Internet pour trouver comment supprimer ces espaces.

- **`sed s/ //g`** : remplacer tous les espaces par une chaîne vide.
  - Source : [Documentation sed](https://www.stephane-robert.info/docs/admin-serveurs/linux/references/sed/)

- **`tr -d ' ' `** : supprimer tous les espaces.
  - Source : [OpenClassrooms](https://openclassrooms.com/forum/sujet/supprimer-les-espaces-dans-une-chaine)


Pour Exercice 2.b, il vaut mieux utiliser ${} pour bien délimiter les variables dans le nom des fichiers. Si on utilise  `"$1"` et que l'on passe "*" comme premier argument, Bash considère ce * comme un caractère et non comme un joker ( wildcard ). En revanche, si on utilise ${} sans guillements, * peut être interprété comme un joker lors de l'expansion des noms de fichiers.

- Sources :
  - [Word Splitting](https://www.gnu.org/software/bash/manual/html_node/Word-Splitting.html)
  - [Filename Expansion](https://www.gnu.org/software/bash/manual/html_node/Filename-Expansion.html)



### Exercice 4 : Explication du code

Ce script reçoit un fichier contenant des URL, puis vérifie si chaque ligne commence par http:// ou https:// et il compte les lignes qui correspondent à ce format et celles qui ne correpondent pas.

- `if [ $# -ne 1 ]` : Vérifie si le programme reçoit exactement un argument. Sinon il affiche  un message d'erreur, puis il s'arrête avec exit.

- `FICHIER_URLS=$1` : Stocke le premier argument dans la variable FICHIER_URLS.

- `OK=0, NOK=0` : Initialiser les deux variables à 0.

- `while read -r LINE` : lit le fichier ligne par ligne et stocke chaque ligne dans la variable LINE.
- `done < $FICHIER_URLS` : Indique le fichier à lire dans la boucle while.

- `if [[ $LINE =~ ^https:// ]]` : Vérifie si la ligne commence par http:// ou https://. Si oui, le programme ajoute 1 à OK sinon 1 à NOK. Le dernier echo affiche les résultats obtenus dans la boucle while.



## Problèmes rencontrés

Pour Exercice 2.a, j'ai essayé de garder la même structure que précédemment  avec la commande suivante :
`echo "2016: $(bash compte_par_type.sh 2016 | grep "$1" | wc -l | sed 's/ //g')"` Cependant, cette commande m'a renvoyé 0 au lieu du résultat attendu. En effet, le script `compte_par_type.sh`attend deux arguments, alors que je ne lui en avais fourni qu'un seul, 2016. J'ai donc supprimé `grep, wc -l`et `sed` puisque le script `compte_par_type.sh`fait déjà le comptage.

