# There is a good resource at https://github.com/docker-library/mongo

FROM mongo:4.4

RUN mkdir -p /data/db /data/configdb \
	&& chown -R mongodb:mongodb /data/db /data/configdb

VOLUME /data/db /data/configdb

COPY add_db_users.js /docker-entrypoint-initdb.d/
COPY docker-entrypoint.sh /usr/local/bin/
COPY config/mongod.conf /opt/mongod.conf

EXPOSE 27017
CMD ["mongod", "-f", "/opt/mongod.conf"]
