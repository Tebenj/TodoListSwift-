# TodoListSwift-

La version [pdf](Girod_Benjamin_CR_Swift.pdf) du compte rendu est également disponible.

# Introduction

L'objectif des séances de TP est de développer une application complète de type Gestionnaire de tâches (Todo list). J'ai utilisé un émulateur d'iPhone 11 pour ce TP.

# 1. La page d'accueil

La page principale de l'application affiche les différentes tâches dans une TableView. Le bouton "+" en haut à droite permet d'ajouter de nouvelles tâches. 
Le bouton "Tri" en haut à gauche permet de trier les tâches par ordre chronologique de réalisation.
Chaque cellule de la TableView affiche le titre de la catégorie ainsi qu'un bouton pour valider ou non la tâche. Le bouton de validation se présente comme une case à coché 
grâce à la classe Checkpoint trouvé sur internet. Le principe est qu'une image de case à coché est créé ainsi Lorsque l'utilisateur clique sur la case à cocher, 
la propriété "checked" est basculée et un événement "valueChanged" est envoyé ce qui permet de changer l'image.
En faisant un swipe vers la gauche sur la cellule de la TableView, on supprime la tâche.

# 2. Ajout d'une tâche

L'ajout d'une tâche se compose en trois parties : 

- Choix du titre de la tâche 
- Choix de la description de la tâche
- Choix de la date de la tâche

# 3. Affichage le détail de la tâche

Lorsque l'on clique dans une cellule du TableView on est directement envoyé dans le détail de la tâche qui affiche le titre, la description et la date.
 

# 4. Conclusion

Malheureusement je n'ai pas pu ajouter à mon projet les catégories ainsi que le moteur de recherche. J'avais cependant créé la classe TodoList 
permettant de réaliser cette fonctionnalité. Il aurait fallu ensuite comme pour l'ajout de tâche un segue qui lorsque que l'on cliquerait sur une catégorie afficherait 
la liste des tâches qui lui sont associés.
