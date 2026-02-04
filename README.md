# Symfony Noob

<table><tr><td>

Un projet personnel sur Symfony, me basant sur les vidéos [Symfony 7 de Grafikart](https://youtu.be/1Fz6-Gkou-U). J'ai installé symfony cli également dans mon conteneur via `docker exec -it nginx_symfony_noob sh`.

Le lien du localhost est <http://localhost:7800/> et pour CloudBeaver, c'est <>

</td></tr></table>

## Initialisation après git clone

<details><summary class="button">🔍 Spoiler</summary><div class="spoiler">

### Env local

```bash
USER_ID=$(id -u)
GROUP_ID=$(id -g)
cat <<EOF > .env.local
DB_USER="root"
DB_PASSWORD="root"
DB_NAME="blog"
SERVER_VERSION="16"
USER_ID="${USER_ID}"
GROUP_ID="${GROUP_ID}"
DATABASE_URL="postgresql://\${DB_USER}:\${DB_PASSWORD}@postgres:5432/\${DB_NAME}?serverVersion=\${SERVER_VERSION}&charset=utf8"
EOF
```

### Créer la pile docker

```bash
PROJECT_NAME="SymfonyNoob"
sudo systemctl start docker
docker compose -p "${(L)PROJECT_NAME}" --env-file .env.local up -d
```

Pour arrêter tous les conteneurs de docker

```bash
docker stop $(docker ps -q)
docker ps
```

### Initialisation des droits du conteneur

Il faudra lancer ces commande une fois par ordinateur.
Depuis [la page de téléchargement de Symfony](https://symfony.com/download), j'ai juste corrigé la commande sudo, dans ce qui est fournit pour `alpine`
On va lancer le shell du conteneur `php_symfony_noob` en root, le gestionnaire de paquet est ici `apk` et non `apt`.

```bash
sudo chown -R $(id -u):$(id -g) "$(pwd)"
docker exec -it -u root php_symfony_noob bash
```

Et maintenant que l'on est connecté au conteneur

```bash
cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
git config --global --add safe.directory /var/www
apk add --no-cache bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
apk add symfony-cli
apk add nodejs npm
exit
```

_Une partie de ces commandes, je les mettrais dans mon compose de docker_.

Symfony est installé dans php, dans le conteneur `container_name: php_symfony_noob`, on va donner les droits d'accès à la pile.

```bash
docker exec -it php_symfony_noob bash
composer install
```

Normalement tout est correctement installé.

```bash
symfony check:requirements
exit
```

Tout devrait être vert.

</div></details>

## Installation de Bootstrap

L'installation est détaillée ici

<details><summary class="button">🔍 Spoiler</summary><div class="spoiler">

### Installer Encore

Je vais installer Encore, qui me permettra d'ajouter Bootstrap, je me base [sur cette partie de sa doc](https://symfony.com/doc/current/frontend.html#switch-from-assetmapper).

```bash
composer remove symfony/ux-turbo symfony/asset-mapper symfony/stimulus-bundle
composer require symfony/webpack-encore-bundle symfony/ux-turbo symfony/stimulus-bundle
npm install
```

### Installation de Bootstrap avec npm

Depuis [cette doc de Symfony pour Boootsrap](https://symfony.com/doc/current/frontend/encore/bootstrap.html).

```bash
npm install bootstrap --save-dev
npm install @symfony/stimulus-bridge --save-dev
```

J'ai ajouté stimulus, un framework léger qui est proposé par symfony.

### Ajout de l'import front

Je créé un fichier `global.scss`

```bash
touch assets/styles/global.scss
```

et j'y mets

```scss
// assets/styles/global.scss

// customize some Bootstrap variables
// $primary: darken(#428bca, 20%);

// the ~ allows you to reference things in node_modules
@import "~bootstrap/scss/bootstrap";
```

On l'ajoute aussi dans `assets/app.js`

```javascript
import "./styles/global.scss";
import "bootstrap";
```

### Activer Sass et popper

Dans `webpack.config.js` il faut dé-commenter `//.enableSassLoader()`

```javascript
.enableSassLoader()
```

et on install la dépendance

```bash
npm install @popperjs/core --save-dev
npm install sass-loader@^16.0.1 sass --save-dev
```

### Compilation

```bash
# développement - uà faire à chaque changement de SCSS ou de JS
npm run dev
# ou
# production, avant chaque déploiement
npm run build
```

Voilà, Bootstrap est intégré à votre projet (en cas de modification de Bootstrap, il faudra relancer ces commandes).

</div></details>

## Démarrage et arrêt du conteneur

<details><summary class="button">🔍 Spoiler</summary><div class="spoiler">

```bash
PROJECT_NAME="SymfonyNoob"
sudo systemctl start docker
```

```bash
docker compose -p "${(L)PROJECT_NAME}" start
```

```bash
docker compose -p "${(L)PROJECT_NAME}" stop
```

</div></details>

## Connexion au conteneur

Pour travailler sur le projet, il faut se connecter à `php_symfony_noob`.

On lance la stack docker.

Et on se connecte au conteneur.

```bash
docker exec -it php_symfony_noob bash
```

## Génération de contrôleurs

Les contrôleurs sont des classes, ont va les générer automatiquement avec les commande Symfony, ici on va faire `HomeController`, qui va gérer la page d'accueil.

```bash
php bin/console make:controller HomeController
```

et pareil pour `HomeController`

```bash
php bin/console make:controller RecipeController
```

## Moteur de template TWIG

Ils sont situés dans `template`, dans mon `templates/recipe/index.html.twig`, consulter [la doc de TWIG](https://twig.symfony.com/doc/3.x/).

```twig
{% extends 'base.html.twig' %}

{% block title %}
    Toutes les recettes
{% endblock %}

{% block body %}
    lorem caca
{% endblock %}
```

Pour afficher les routes (depuis le shell du conteneur)

```bash
php bin/console debug:router
```

## Où en suis-je

5:22 de la video twig template Engine

<span hidden>
<details><summary></summary>
<style>.spoiler{border-left:4px solid #1abc9c;border-bottom-left-radius:3px;padding-left:10px;padding-top:15px;margin-top:-10px;margin-bottom:15px}.button{cursor:pointer;padding:5px 10px;background-color:#3498db;color:white;border-radius:3px;margin-bottom:5px;display:inline-block;transition:background-color 0.2s}.button:hover{background-color:#217dbb}details[open] .button{background-color:#1abc9c}</style>
</details></span>

<p align="right"><a href="#symfony-noob">🔝 Retour en haut</a></p>
