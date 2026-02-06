#!/bin/bash
# GitHub Push Script für Digitales Klassenzimmer

echo "🚀 GitHub Upload - Digitales Klassenzimmer"
echo "========================================="

# Git initialisieren falls nötig
if [ ! -d ".git" ]; then
    echo "⚙️  Initialisiere Git Repository..."
    git init
    git branch -M main
fi

# Config setzen
git config user.name "HerrHermannGS"
git config user.email "thomas@example.com"

# Dateien hinzufügen
git add .
git commit -m "Update index.html: Premium Redesign & Module Links"

# Remote prüfen/setzen (hier muss man ggf. die URL anpassen)
REMOTE_URL=$(git remote get-url origin 2>/dev/null)
if [ -z "$REMOTE_URL" ]; then
    echo "⚠️  Kein Remote-Repository gefunden."
    echo "Bitte erstelle ein neues Repo auf GitHub (z.B. 'digitales-klassenzimmer') und gib die URL hier ein:"
    echo "Beispiel: git remote add origin https://github.com/HerrHermannGS/digitales-klassenzimmer.git"
else
    echo "🔄 Pushe zu GitHub ($REMOTE_URL)..."
    git push -u origin main
fi
