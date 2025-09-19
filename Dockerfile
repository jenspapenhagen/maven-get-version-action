FROM maven:3-eclipse-temurin-21-alpine

WORKDIR /app

COPY entrypoint.sh ./entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
