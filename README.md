# Nuxt 3 Minimal Docker Template 

## Setup

Copy the `.env.example` file to `.env` and edit the variables to your liking.

```bash
cp .env.example .env
```

Up the containers with docker-compose and build the images.

```bash
docker-compose up -d --build
```

Go inside the container

```bash
docker-compose exec frontend bash
```

Build the project, Select yarn for package manager

```bash
cd / && npx nuxi@latest init app -f 
```

Enjoy!

```
cd app && yarn dev
```
