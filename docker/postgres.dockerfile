
FROM postgres:13

USER postgres

ENV POSTGRES_MULTIPLE_DATABASES="pollux,connect,agent,node_db"
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

COPY ./resources/postgres-init-script.sh /docker-entrypoint-initdb.d/init-script.sh
COPY ./resources/postgres-max_conns.sql /docker-entrypoint-initdb.d/max_conns.sql

EXPOSE 5432

CMD ["postgres"]