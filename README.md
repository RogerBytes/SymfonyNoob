# Symfony Noob

<table><tr><td>

Un projet personnel sur Symfony, me basant sur les cours vidéo de Grafikart.
</td></tr></table>

## Utilisation docker

```bash
PROJECT_NAME="SymfonyNoob"
sudo systemctl start docker
docker compose -p "${PROJECT_NAME}" start
docker compose -p "${PROJECT_NAME}" stop
```

Pour arrêter tous les conteneurs de docker

```bash
docker stop $(docker ps -q)
docker ps
```

## Initialisation des droits du conteneur

Symfony est installé dans php, dans le conteneur `container_name: php_symfony_noob`, on va donner les droits d'accès à la pile.
Il faudra lancer ces commande une fois par ordinateur.

```bash
docker exec -it php_symfony_noob bash
chown -R $UID:$GID /var/www
composer install
git config --global --add safe.directory /var/www
exit
```

<span hidden>
<details><summary></summary>
<style>.spoiler{border-left:4px solid #1abc9c;border-bottom-left-radius:3px;padding-left:10px;padding-top:15px;margin-top:-10px;margin-bottom:15px}.button{cursor:pointer;padding:5px 10px;background-color:#3498db;color:white;border-radius:3px;margin-bottom:5px;display:inline-block;transition:background-color 0.2s}.button:hover{background-color:#217dbb}details[open] .button{background-color:#1abc9c}</style>
</details></span>

<p align="right"><a href="#">🔝 Retour en haut</a></p>
