FROM maven:3-eclipse-temurin-24-alpine

WORKDIR /app

USER seluser

COPY --chown=seluser:seluser entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
