FROM ghcr.io/livebook-dev/livebook:edge

ENV LIVEBOOK_APPS_PATH "/public-apps"
ENV LIVEBOOK_APPS_PATH_WARMUP "manual"

COPY public-apps/ /public-apps
RUN /app/bin/warmup_apps.sh