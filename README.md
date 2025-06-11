# 🚀 Fullstack Docker Project with CI/CD

![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/SSMEETS01/cloud-ready-react-node-app/deploy.yml?branch=master)
![Made With React](https://img.shields.io/badge/Made%20with-React-blue?logo=react)
![Backend: Node.js](https://img.shields.io/badge/Backend-Node.js-green?logo=node.js)


This project is a full stack (React + Node.js) application, containerized and available via:

- ✅ CI/CD via **GitHub Actions**
- ✅ Deployment to your own VPS via SSH
- ✅ **Frontend and Backend both accessible via your own domain name**

---

## 📁 Project Structure

```
/frontend      → React frontend (Dockerized with Nginx)
/backend       → Express.js API backend
/.github       → GitHub Actions CI/CD workflow
docker-compose.yml → Orchestrates frontend, backend and Traefik
```

## 🌐 Domain & Routing

| Service   | URL                         | Description                  |
|-----------|-----------------------------|------------------------------|
| Frontend  | `https://www.yourdomain.com`| React app served via Traefik |
| Backend   | `https://api.yourdomain.com`| Express API served via Traefik |

## ⚙️ Setup

1. Make sure your domain uses **Cloudflare DNS**
2. Create a `.env` file in the root with your Cloudflare credentials:

```env
CF_API_EMAIL=you@example.com
CF_API_KEY=your_cloudflare_api_key
```

3. Optionally, fill in the `.env.example` files in `frontend/` and `backend/`

## 🚀 Deployment

### Local deployment (with Docker Compose)

```bash
docker-compose up -d
```

### CI/CD Deployment (GitHub Actions)

Add the following secrets to your GitHub repository:

| Secret         | Description                      |
|----------------|----------------------------------|
| `VPS_HOST`     | Your server IP or hostname       |
| `VPS_USER`     | Your remote user on the VPS      |
| `VPS_SSH_KEY`  | Your private SSH key (no passphrase) |

Each push to the `master` branch will trigger an auto-deploy.

## 📦 Docker Build & Push

To manually build and push Docker images:

```bash
chmod +x build_and_push.sh
./build_and_push.sh
```

Make sure you're logged in to Docker Hub first:

```bash
docker login
```

---

## 📜 License

MIT © Siam Smeets
