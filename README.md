# clean_disk
script qui supprime automatiquement les fichiers temporaires, les fichiers en cache et les fichiers inutiles pour libérer de l'espace disque sur le système.

Ce script nettoie les fichiers temporaires, les fichiers en cache et les fichiers inutiles sur le système pour libérer de l'espace disque. Les répertoires temporaires sont spécifiés dans la variable TEMP_DIRS, les répertoires de cache sont spécifiés dans la variable CACHE_DIRS et les fichiers de log à supprimer sont spécifiés dans la variable LOG_DIRS. Les fichiers inutiles tels que la corbeille, les vignettes et les fichiers de cache sont spécifiés dans les variables TRASH_DIR, $HOME/.thumbnails, $HOME/.cache/thumbnails, $HOME/.cache/mozilla et $HOME/.local/share/Trash.

Le script utilise la commande find pour trouver et supprimer les fichiers temporaires et les fichiers de log, la commande apt-get clean pour supprimer les fichiers en cache du système de gestion de paquets, et la commande rm -rf pour supprimer les fichiers inutiles.

Pour utiliser ce script, il suffit de copier le code ci-dessus dans un éditeur de texte, de le sauvegarder sous un nom tel que "clean_disk.sh", de donner les permissions d'exécution avec la commande chmod +x clean_disk.sh, et de l'exécuter avec la commande ./clean_disk.sh. Vous pouvez également planifier l'exécution de ce script en utilisant la commande crontab.
