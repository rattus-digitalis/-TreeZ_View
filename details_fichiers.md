# 📂 Structure des Dossiers de TreeZ_View

Ce document décrit l'utilité de chaque dossier créé par le script `setup_project.sh` pour organiser le projet **TreeZ_View**.

## 🏗️ **Dossiers Principaux**

### 📂 `src/main/java/com/treezview/`
> Contient tout le **code source principal** du projet. Il est structuré en plusieurs sous-dossiers pour séparer les fonctionnalités.

- **`cli/`** : Gère le mode **CLI** de l’application (ligne de commande).
- **`gui/`** : Implémente l’**interface graphique** avec **JavaFX**.
- **`utils/`** : Contient des **fonctions utilitaires** comme la gestion des fichiers et des permissions.

---

### 🎨 `assets/`
> Stocke les ressources graphiques du projet.

- **`icons/`** : Icônes utilisées dans l’interface graphique.
- **`logos/`** : Logos du projet.
- **`images/`** : Images diverses utilisées dans l’application.

---

### ⚙️ `config/`
> Contient les **fichiers de configuration** de l’application.

- **`default-config.json`** : Configuration par défaut de l’application.

---

### 📖 `docs/`
> Documentation et fichiers annexes du projet.

- **`cahier_des_charges.md`** : Cahier des charges du projet.
- Autres documents techniques.

---

### 🛠️ `.vscode/`
> Configuration pour **Visual Studio Code**.

- **`settings.json`** : Paramètres spécifiques au projet.
- **`launch.json`** : Configuration pour exécuter et déboguer l’application.
- **`tasks.json`** : Automatisation des tâches (compilation, exécution…).

---

## 📜 **Fichiers Importants**

- **`.gitignore`** : Liste des fichiers et dossiers à exclure du suivi Git.
- **`PKGBUILD`** : Script pour créer un package **AUR** pour Arch Linux.
- **`README.md`** : Documentation principale du projet.
- **`LICENSE`** : Licence du projet.
- **`build.gradle`** : Gestion des dépendances et compilation avec **Gradle**.
- **`run.sh`** : Script permettant de lancer rapidement l’application.

---

📝 **Ce document sert de référence pour comprendre la structure du projet TreeZ_View.** 🚀

