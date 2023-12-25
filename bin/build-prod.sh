#!/bin/bash

# 拿到當前路徑
CURRENT_DIRECTORY=$(dirname "$0")

echo "CURRENT_DIRECTORY: $CURRENT_DIRECTORY"

# 回到根路徑
cd $CURRENT_DIRECTORY/../ || exit

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
yarn install \
  --prefer-offline \
  --frozen-lockfile \
  --non-interactive \
  --production=false

# 執行 yarn build
yarn build
