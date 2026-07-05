# V1.1 - Monitoring local avec Prometheus, Grafana et cAdvisor

Cette version ajoute une couche de supervision locale pour les conteneurs Docker de la stack Nolter IT Starter Pack.

## Objectif

Superviser les conteneurs suivants :

- GLPI
- MySQL GLPI
- NetBox
- PostgreSQL NetBox
- Redis NetBox
- Uptime Kuma

## Stack monitoring

- cAdvisor : collecte des métriques conteneurs
- Prometheus : stockage et requêtes des métriques
- Grafana : dashboards de visualisation

## Lancer la stack principale

```bash
cp .env.example .env
docker compose up -d