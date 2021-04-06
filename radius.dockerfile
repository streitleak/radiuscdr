FROM freeradius/freeradius-server:latest
COPY raddb/ /etc/raddb/
RUN chmod 0640 /etc/raddb/clients.conf /etc/raddb/dictionary /etc/raddb/mods-available/sql /etc/raddb/mods-config/sql/main/mysql/queries.conf
WORKDIR /etc/raddb/mods-enabled
RUN ln -s ../mods-available/sql sql

RUN apt-get update \
    &&  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
    
RUN TZ=Asia/Taipei \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata 