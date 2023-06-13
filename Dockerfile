FROM maven:3.9-eclipse-temurin-8-alpine
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
