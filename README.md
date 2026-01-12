# Symfony Noob

<table><tr><td>

Un projet personnel sur Symfony, me basant sur les cours vidéo de Grafikart. J'ai installé symfony cli également dans mon conteneur via `docker exec -it nginx_symfony_noob sh
`.

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

### Utilisation docker

```bash
PROJECT_NAME="SymfonyNoob"
sudo systemctl start docker
docker compose -p "${(L)PROJECT_NAME}" start
docker compose -p "${(L)PROJECT_NAME}" stop
```

Pour arrêter tous les conteneurs de docker

```bash
docker stop $(docker ps -q)
docker ps
```

### Initialisation des droits du conteneur

Symfony est installé dans php, dans le conteneur `container_name: php_symfony_noob`, on va donner les droits d'accès à la pile.
Il faudra lancer ces commande unes fois par ordinateur.

```bash
docker exec -it php_symfony_noob bash
chown -R $UID:$GID /var/www
composer install
git config --global --add safe.directory /var/www
exit
```

### Installer symfony

Depuis [la page de téléchargement de Symfony](https://symfony.com/download), j'ai juste corrigé la commande sudo
On va lancer le shell du conteneur `php_symfony_noob` en root, le gestionnaire de paquet est ici `apk` et non `apt`.

```bash
docker exec -it -u root php_symfony_noob bash
apk update
apk add curl unzip bash
curl -sS https://get.symfony.com/cli/installer | bash
mv /root/.symfony5/bin/symfony /usr/local/bin/symfony



apk add --no-cache bash
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
sudo apk add symfony-cli
```

</div></details>

## Connexion au conteneur

<details><summary class="button">🔍 Spoiler</summary><div class="spoiler">

Pour travailler sur le projet, il faut se connecter à `php_symfony_noob`

On lance la stack docker.



Et on se connecte au conteneur

```bash
docker exec -it php_symfony_noob bash
```

</div></details>

## Génération de contrôleurs

Les contrôleurs sont des classes, ont va les générer automatiquement avec les commande Symfony, ici on va faire `HomeController`, qui va gérer la page d'accueil.

```bash
symfony make:controller HomeController
```

<span hidden>
<details><summary></summary>
<style>.spoiler{border-left:4px solid #1abc9c;border-bottom-left-radius:3px;padding-left:10px;padding-top:15px;margin-top:-10px;margin-bottom:15px}.button{cursor:pointer;padding:5px 10px;background-color:#3498db;color:white;border-radius:3px;margin-bottom:5px;display:inline-block;transition:background-color 0.2s}.button:hover{background-color:#217dbb}details[open] .button{background-color:#1abc9c}</style>
</details></span>

<p align="right"><a href="">🔝 Retour en haut</a></p>
