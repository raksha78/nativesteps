#!/bin/bash -e

export NVM_VERSION=v0.35.3
echo "================= Installing NVM "$NVM_VERSION" ================"
curl -sS https://raw.githubusercontent.com/creationix/nvm/"$NVM_VERSION"/install.sh | bash

# Set NVM_DIR so the installations go to the right place
export NVM_DIR="/root/.nvm"

NODE_VERSION=8.17.0
NPM_VERSION=6.14.5
echo "=============== Installing Node $NODE_VERSION ============="
. /root/.nvm/nvm.sh && nvm install $NODE_VERSION
npm install npm@$NPM_VERSION -g
