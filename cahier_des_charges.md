# Cahier des Charges : Application de Visualisation d'Arborescence de Fichiers

## 1. Présentation du Projet

**Nom du projet** : Treezview  
**Type d'application** : Desktop (Linux)  
**Technologie principale** : Java (JavaFX pour l'interface graphique, bibliothèque Java pure pour le CLI)  
**Objectif** : Développer une application permettant de visualiser l'arborescence des fichiers du PC sous forme d'arbre interactif avec un joli visuel, et offrant un mode CLI en complément.

---

## 2. Fonctionnalités Principales

### 2.1 Interface Graphique (GUI - JavaFX)
- 📂 **Affichage en arborescence des fichiers et dossiers**
- 🎨 **Interface esthétique et fluide** avec animations
- 🔍 **Barre de recherche** pour trouver des fichiers/dossiers
- 📌 **Favoris / Accès rapides**
- 🌑 **Thèmes personnalisables** :
  - 📜 **Thème général** (clair, sombre, personnalisé…)
  - 🔤 **Choix de la police d'écriture**
  - 🎨 **Personnalisation des couleurs des dossiers et fichiers**
- 🖱️ **Actions sur les fichiers** (copier, renommer, supprimer) avec :
  - 🔐 Validation uniquement si l'utilisateur est root
  - 📊 Gestion asynchrone pour ne pas bloquer l’UI
- 📊 **Affichage des détails des fichiers** (taille, type, date de modification…)

### 2.2 Interface en Ligne de Commande (CLI - Java Pure)
- 🏷️ **Mode CLI accessible via `--cli`**
- 🌲 **Affichage de l'arborescence des fichiers** façon `tree`
- 🎨 **Coloration syntaxique** des fichiers selon leur type
- 🖥️ **Commandes disponibles** :
  - `app --cli /home/user` : Afficher l'arborescence
  - `app --copy /source /destination` : Copier un fichier/dossier
  - `app --delete /fichier` : Supprimer un fichier avec validation root
  - `app --rename /old /new` : Renommer un fichier/dossier
- ✅ **Option `--no-color`** pour désactiver la coloration syntaxique

---

## 3. Contraintes Techniques

### 3.1 Développement
- 🖥️ **Langage** : Java  
- 📦 **Frameworks** :
  - **JavaFX** pour l'interface graphique
  - **Bibliothèque Java pure** pour le mode CLI
- 🔄 **Gestion asynchrone des actions** avec `Task<Void>`

### 3.2 Compatibilité
- 🐧 **Système cible** : Linux uniquement (Arch Linux en priorité)
- 📦 **Format de distribution** :
  - 🎯 **AUR (yay)** pour une installation facile
  - 📂 `PKGBUILD` pour gérer les dépendances et versions

### 3.3 Sécurité
- 🔒 **Validation des actions sensibles** uniquement si root
- 📝 **Journalisation des actions critiques** (logs des suppressions et modifications)

---

## 4. Déploiement et Distribution

- 📌 **Code source hébergé sur GitHub/GitLab** (requis pour l'AUR)
- 📦 **Création d'un package AUR** avec `PKGBUILD`
- 🛠️ **Script d'installation automatisé** (dépendances, permissions…)

---

## 5. Évolutions Futures (Roadmap)
- 🔥 **Ajout d'un mode interactif en CLI** (navigation, actions dynamiques)
- 🖼️ **Prévisualisation des fichiers (images, PDF, textes…)**
- 🔄 **Drag & Drop dans l’interface graphique**
- 📜 **Export JSON/XML de l’arborescence**

---

## 6. Conclusion
Ce projet vise à fournir un **explorateur de fichiers moderne, performant et sécurisé**, intégrant à la fois une **interface graphique soignée avec JavaFX** et un **mode CLI puissant et flexible** en Java. Son déploiement sous **AUR** permettra une installation facile sur Arch Linux.

