# Journal de bord du projet encadré

Date : 03 oct 2026

## Problèmes rencontrés

- Quand j'ai fait l'exercice 2.a.1, dans la partie « Commit new file », l'option « Add an optional extended description » ne s'affichait pas. Apparemment, l'interface de GitHub a changé. Lorsque l'on clique sur le bouton « Commit changes », c'est à ce moment-là que la rubrique « Add an optional extended description » devient visible.

- J'étais en train de faire des tests avec un autre repo, « Test ». J'ai modifié un fichier sur GitHub et j'ai oublié de lancer `git pull` dans mon terminal. J'ai fait `git add .` tout de suite, mais Git m'a affiché un message indiquant qu'il fallait faire `git pull`. Comme cela ne fonctionnait pas, j'ai lancé `git pull --rebase origin main` pour obtenir un historique de branches linéaire.
