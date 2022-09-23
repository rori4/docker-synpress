# syntax=docker/dockerfile:1
FROM synthetixio/docker-e2e:16.17-ubuntu as base

# Install Doppler CLI
RUN (curl -Ls --tlsv1.2 --proto "=https" --retry 3 https://cli.doppler.com/install.sh || wget -t 3 -qO- https://cli.doppler.com/install.sh) | sh

FROM base as test
