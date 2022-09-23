# syntax=docker/dockerfile:1
FROM cypress/browsers:node16.14.2-slim-chrome100-ff99-edge as base

# Install Doppler CLI
RUN (curl -Ls --tlsv1.2 --proto "=https" --retry 3 https://cli.doppler.com/install.sh || wget -t 3 -qO- https://cli.doppler.com/install.sh) | sh

# Install synpress
RUN npm install -g @synthetixio/synpress

FROM base as test
