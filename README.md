# Notre super modèle

### Environnement virtuel

Création de l'environnement virtuel:
```sh
python3 -m venv --python=python3.11.7 .tensorflow_venv
```

Activation de l'environnement virtuel:
```sh
source .tensorflow_venv/bin/activate
```

Désactivation de l'environnement virtuel:
```sh
deactivate
```

### Configuration

La configuration se trouve dans le fichier `config.json`.

## Ensemble de données (`dataset`)

- `file`: Chemin vers le fichier de l'ensemble de données.
- `dir`: Répertoire où se trouvent les images.
- `size`: Taille de l'ensemble de données pour une définition.
- `definition`: Un dictionnaire qui définit les catégories de l'ensemble de données. La clé est le nom du dossier qui est créé, et la valeur est le nom affiché sur la caméra.

## Modèle (`model`)

- `file`: Chemin vers le fichier du modèle.

### Utilisation des scripts

- **0-dependencies.ipynb**

Installation des différentes dépendances pip.

- **1-take-images.ipynb**

Pour chaque définition de l'ensemble de données, il y a **n** image qui sont prises *(n se trouve dans la configuration)*.

- **2-generate-dataset.ipynb**

Génération et sauvegarde de l'ensemble de données dans un fichier.

- **3-train-model.ipynb**

Entraînement et sauvegarde du modèle dans un fichier.

- **4-use-mode.ipynb**

Utilisation de notre modèle personnalisé.

Une visualisation de la caméra s'ouvre, elle affiche les prédictions de notre modèle.
