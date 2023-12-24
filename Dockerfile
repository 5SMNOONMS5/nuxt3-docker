ARG NODE_VERSION

FROM node:${NODE_VERSION}-slim as base

WORKDIR /app

# By default, just keep the container running
CMD ["tail", "-f", "/dev/null"]
