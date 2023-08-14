FROM maven:3.9.3-eclipse-temurin-11-alpine
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
