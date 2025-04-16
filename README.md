# Scalable Web App with Kubernetes, Nginx, and Redis

## Project Overview

This project sets up a scalable web app using Kubernetes, Nginx, and Redis. The app's architecture is containerized and deployed on Kubernetes. It leverages Nginx for load balancing and Redis for caching to enhance performance and scalability.

---

## Components

- **Web App**: A simple web application that can be scaled horizontally on Kubernetes.
- **Nginx**: Acts as a reverse proxy to load balance traffic across multiple web app instances.
- **Redis**: Used for caching purposes to speed up responses and reduce load on the web app.

---

## Technologies Used

- **Docker**: For containerizing the web app and services.
- **Kubernetes**: For orchestrating and managing the containers in a cluster.
- **Nginx**: For load balancing and reverse proxying.
- **Redis**: For caching.

---

## Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/cybmin/scalable-web-app.git
cd scalable-web-app
docker build -t scalable-web-app .

docker tag scalable-web-app cybmin/scalable-web-app:latest
docker push cybmin/scalable-web-app:latest

kubectl apply -f deployment.yaml
kubectl port-forward service/scalable-web-app-service 8080:80
