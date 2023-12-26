FROM postgis/postgis:15-3.3

WORKDIR pg_app


COPY ./init.sh /docker-entrypoint-initdb.d/init.sh
COPY ./init.sql sql/
#COPY ./data/ .
RUN apt-get update && apt-get -y install\
    #apt -y install osm2pgsql && \
    #apt-get -y install openjdk-11-jre-headless \
    wget \
    unzip \
    gdal-bin
    #wget "https://download.geofabrik.de/europe/france/aquitaine-latest.osm.pbf" && \ 
    #wget "http://osm2po.de/releases/osm2po-5.5.5.zip" -O temp.zip  && \ 
    #unzip temp.zip  && \
    #rm temp.zip && \
    #java -Xmx512m -jar osm2po-core-5.5.5-signed.jar cmd=c prefix=aq aquitaine-latest.osm.pbf