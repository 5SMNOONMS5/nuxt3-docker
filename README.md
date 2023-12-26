# Nuxt 3 Minimal Docker Template with Nginx version

[Article: Here](https://medium.com/@tasb00429/nuxt3-with-docker-%E3%84%A7-358e6a253d61)

## Setup during development

Copy the `.env.example` file to `.env` and edit the variables to your liking.

```bash
cp .env.example .env
```

Up the containers with docker-compose and build the images. 

```bash
dc -f docker-compose.yml up -d --build frontend
```

Go inside the container

```bash
docker-compose exec frontend bash
```

Install dependencies

```bash
# yarn
yarn install
```

Start develop the project on `http://localhost:3000`:
Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.

```bash
yarn dev
```

Locally preview production build:

```bash    
yarn preview
```

# Build for Production with Nginx

Build for production

```bash
dc down && dc build --no-cache && dc -f docker-compose.prod.yml up -d
```









