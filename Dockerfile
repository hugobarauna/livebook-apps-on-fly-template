FROM ghcr.io/livebook-dev/livebook:edge

ARG APPS_PATH=./public-apps

ENV LIVEBOOK_APPS_PATH "/apps"
ENV LIVEBOOK_APPS_PATH_WARMUP "manual"

COPY ${APPS_PATH} /public-apps
RUN /app/bin/warmup_apps.sh