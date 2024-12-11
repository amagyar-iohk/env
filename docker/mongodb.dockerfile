FROM mongo:6.0

ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=admin
ENV MONGO_INITDB_DATABASE=mediator

COPY ./resources/mongo-initdb.js /docker-entrypoint-initdb.d/initdb.js

EXPOSE 27017