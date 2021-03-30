FROM freeradius/freeradius-server:latest
COPY raddb/ /etc/raddb/
RUN chmod 0640 /etc/raddb/clients.conf /etc/raddb/dictionary /etc/raddb/mods-available/sql /etc/raddb/mods-config/sql/main/mysql/queries.conf
WORKDIR /etc/raddb/mods-enabled
RUN ln -s ../mods-available/sql sql