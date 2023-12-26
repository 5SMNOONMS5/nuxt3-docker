# Nuxt 3 Minimal Docker Template with Nginx version

[Build nginx article](https://tasb00429.medium.com/nuxt3-with-docker-nginx-deploy-%E4%BA%8C-29d4b75f5ae9)

[Build without nginx article](https://tasb00429.medium.com/nuxt3-with-docker-%E3%84%A7-358e6a253d61)

## Setup during development

Copy the `.env.example` file to `.env` and edit the variables to your liking.

```bash
cp .env.example .env
```

Up the containers with docker-compose and build the images. 

```bash
docker-compose -f docker-compose.yml up -d --build frontend
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
docker-compose -f docker-compose.prod.yml up -d --build 
```









