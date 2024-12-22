#!/bin/bash

# Demander l'emplacement racine
echo "Où voulez-vous enregistrer le projet ? (Chemin absolu ex : /home/user/projets)"
read directory

# Demander le nom du projet
echo "Quel est le nom de votre projet ?"
read project

# Vérifier si le dossier racine existe
if [ -d "$directory" ]; then
    # Se déplacer dans le dossier racine
    cd "$directory" || exit

    # Créer le dossier du projet
    mkdir "$project"

    # Se déplacer dans le dossier du projet
    cd "$project" || exit

    # Créer les fichiers nécessaires
    touch index.html style.css readme.md

    # Afficher un message de confirmation
    echo "Le projet a été ajouté."
else
    # Si le dossier racine n'existe pas
    echo "Erreur : Le dossier $directory n'existe pas."
    exit 1
fi
