FROM maven:3-eclipse-temurin-21-alpine

WORKDIR /app

RUN adduser maven -D

USER maven

COPY --chown=maven:maven entrypoint.sh ./entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
