FROM postgis/postgis:15-3.3

WORKDIR data

COPY data/ . 
COPY ./init.sh /docker-entrypoint-initdb.d/init.sh
RUN apt update && \
    apt -y install osm2pgsql && \
    apt -y install openjdk-11-jre-headless && \
    apt -y install wget && \
    apt -y install unzip && \
    wget "https://download.geofabrik.de/europe/france/aquitaine-latest.osm.pbf" && \ 
    #wget "http://osm2po.de/releases/osm2po-5.5.5.zip" -O temp.zip  && \ 
    #unzip temp.zip  && \
    #rm temp.zip && \
    java -Xmx512m -jar osm2po-core-5.5.5-signed.jar cmd=c prefix=aq aquitaine-latest.osm.pbf