# ---
# Base stage
ARG NODE_VERSION

FROM node:${NODE_VERSION}-slim as base

MAINTAINER "example@gmail.com"

ENV NODE_ENV=production

WORKDIR /app

# ---
# Build stage
FROM base as build

COPY ../package.json .
COPY ../yarn.lock .

# 安裝 yarn
# --prefer-offline
#
#   use network only if dependencies are not available in local cache
#
# --frozen-lockfile
#
#   don't generate a lockfile and fail if an update is needed
#
# --non-interactive
#
#   do not show interactive prompts
#
# --production=false
#
#   install devDependencies
RUN yarn install \
  --prefer-offline \
  --frozen-lockfile \
  --non-interactive \
  --production=false

COPY . .

RUN yarn build

# ---
# Run stage
FROM base

# Copy only the files needed to run the app
COPY --from=build /app/.output /app/.output

CMD [ "node", ".output/server/index.mjs" ]
