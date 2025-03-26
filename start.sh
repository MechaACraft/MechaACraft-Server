#!/bin/bash

# VAR
SERVER_NAME="MechaACraft Server"
JAR_NAME="server-1.20.1-923.jar"
JAVA_PATH="/usr/lib/jvm/java-17-openjdk/bin/java"
MIN_RAM="1G"
MAX_RAM="10G"

# ECHO
echo ""
echo "LogTime : $(date +'%Y-%m-%d %H:%M:%S')"
echo "Lancement de $SERVER_NAME..."
echo "Fichier: $JAR_NAME"
echo "Mémoire: $MIN_RAM (MIN) / $MAX_RAM (MAX)"
echo ""

# Verification du JAR
if [ ! -f "$JAR_NAME" ]; then
    echo "Erreur : fichier $JAR_NAME introuvable."
    exit 1
fi

"$JAVA_PATH" -Xms$MIN_RAM -Xmx$MAX_RAM -jar "$JAR_NAME" nogui
