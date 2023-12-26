# Nuxt 3 Minimal Docker Template 

[Build nginx article](https://tasb00429.medium.com/nuxt3-with-docker-nginx-deploy-%E4%BA%8C-29d4b75f5ae9)

[Build without nginx article](https://tasb00429.medium.com/nuxt3-with-docker-%E3%84%A7-358e6a253d61)

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

# Production

Build for production

```bash
docker compose -f docker-compose.prod.yml up --build -d
```
