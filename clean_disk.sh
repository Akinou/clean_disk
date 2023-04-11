#!/bin/bash

# Configuration des variables
TEMP_DIRS="/tmp /var/tmp"
CACHE_DIRS="/var/cache/apt/archives /var/cache/apt/lists /var/cache/fontconfig /var/cache/man"
LOG_DIRS="/var/log /var/tmp/logs"
TRASH_DIR="$HOME/.local/share/Trash"

# Suppression des fichiers temporaires
find $TEMP_DIRS -type f -mtime +1 -delete

# Nettoyage des fichiers en cache
apt-get clean
for dir in $CACHE_DIRS; do
    if [ -d $dir ]; then
        rm -rf $dir/*
    fi
done

# Suppression des fichiers de log
for dir in $LOG_DIRS; do
    if [ -d $dir ]; then
        find $dir -type f -mtime +7 -exec rm {} \;
    fi
done

# Suppression des fichiers inutiles
rm -rf $TRASH_DIR/*
rm -rf $HOME/.thumbnails/*
rm -rf $HOME/.cache/thumbnails/*
rm -rf $HOME/.cache/mozilla/*
rm -rf $HOME/.local/share/Trash/*

# Affichage d'un message de confirmation
echo "Nettoyage de disque terminé."
