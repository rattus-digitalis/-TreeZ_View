#!/bin/bash

# Définition du répertoire du projet
PROJECT_DIR="/home/localhost/TreeZ_View"

# Création des dossiers principaux
mkdir -p "$PROJECT_DIR"/{src/main/java/com/treezview/{cli,gui,utils},assets/{icons,logos,images},config,docs,.vscode}

# Vérification des fichiers existants avant création
touch "$PROJECT_DIR/.gitignore"
touch "$PROJECT_DIR/PKGBUILD"
touch "$PROJECT_DIR/LICENSE"
touch "$PROJECT_DIR/build.gradle"
touch "$PROJECT_DIR/run.sh"

# Fichiers Java source
touch "$PROJECT_DIR/src/main/java/com/treezview/Main.java"
touch "$PROJECT_DIR/src/main/java/com/treezview/cli/CliHandler.java"
touch "$PROJECT_DIR/src/main/java/com/treezview/gui/FileTreeView.java"
touch "$PROJECT_DIR/src/main/java/com/treezview/gui/ThemeManager.java"
touch "$PROJECT_DIR/src/main/java/com/treezview/utils/FileOperations.java"
touch "$PROJECT_DIR/src/main/java/com/treezview/utils/PermissionsChecker.java"

# Fichier de configuration par défaut
touch "$PROJECT_DIR/config/default-config.json"

# Vérification et préservation des fichiers existants
if [ ! -f "$PROJECT_DIR/README.md" ]; then
    echo "# TreeZ_View" > "$PROJECT_DIR/README.md"
    echo "Projet de visualisation de fichiers sous forme d'arborescence avec une interface graphique et un mode CLI." >> "$PROJECT_DIR/README.md"
fi

if [ ! -f "$PROJECT_DIR/docs/cahier_des_charges.md" ]; then
    touch "$PROJECT_DIR/docs/cahier_des_charges.md"
fi

# Ajout du contenu du .gitignore
echo -e "build/\nout/\n*.class\n*.log\n.vscode/\n*.iml" > "$PROJECT_DIR/.gitignore"

# Message de confirmation
echo "✅ Arborescence du projet TreeZ_View créée avec succès !"

