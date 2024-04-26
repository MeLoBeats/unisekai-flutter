# Documentation Technique de l'Application Unisekai

## Description
Unisekai est une application de Réalité Augmentée (AR) qui fournit des informations sur la formation du BUT MMI (Métiers du Multimédia et de l'Internet) ainsi que sur le bâtiment de l'IUT de Bobigny. L'application utilise la technologie AR pour modéliser les contenus tels que les projets des étudiants et les différents parcours sous forme de cubes virtuels, offrant ainsi une expérience immersive et interactive aux utilisateurs.

---

## Architecture

### Organisation des Dossiers
L'organisation des dossiers suit les conventions recommandées pour les applications Flutter :
- `assets/`
  - `images/` : Contient les ressources graphiques utilisées dans l'application.
- `lib/`
  - `components/` : Contient les fichiers de configuration des composants réutilisables.
  - `l10n/` : Contient les fichiers de texte dans différentes langues pour la localisation.
  - `screens/` : Contient les fichiers de code pour chaque écran de l'application.
- `main.dart` : Point d'entrée de l'application.

### Dépendances Externes
- Flutter SDK : Utilisé pour le développement d'applications mobiles multiplateformes.
- `flutter_localizations` : Package Flutter pour la gestion de la localisation et du multilinguisme.

---

## Fonctionnalités Principales
- **Réalité Augmentée :**
  L'application utilise la technologie de Réalité Augmentée pour modéliser les différents éléments, tels que les projets des étudiants et la présentation des parcours du BUT MMI, sous forme de cubes virtuels. Les utilisateurs peuvent interagir avec ces éléments en les manipulant dans l'espace réel à travers leur appareil mobile.

- **Informations sur la Formation MMI :**
  Unisekai fournit des informations détaillées sur la formation du BUT MMI, y compris les programmes d'études, les projets réalisés par les étudiants, les débouchés professionnels, etc.

- **Exploration du Bâtiment de l'IUT de Bobigny :**
  Les utilisateurs peuvent explorer le bâtiment de l'IUT de Bobigny à travers l'application, en découvrant différents points d'intérêt et en accédant à des informations pertinentes sur chaque lieu.

---

## Installation et Configuration

### Prérequis
- Flutter SDK installé localement.
- Un émulateur ou un appareil mobile compatible avec la Réalité Augmentée.

### Instructions d'Installation
1. Cloner le référentiel depuis GitHub.
2. Exécuter `flutter pub get` pour installer les dépendances.
3. Lancer l'application en utilisant la commande `flutter run`.

---

## Équipe
Le projet a été réalisé par Grand Line Agency, MeLoBeats et moumine1.
