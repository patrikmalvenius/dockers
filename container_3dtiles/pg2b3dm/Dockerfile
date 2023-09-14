FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR data/pg3bdm_app


COPY ./init.sh ./
ENV PATH="${PATH}:/root/.dotnet/tools"

RUN apt update && \
    #apt-get install -y dotnet-sdk-6.0 && \
    dotnet tool install -g pg2b3dm  && \ 
    dotnet tool install -g tesselate_building
    #apt -y install openjdk-11-jre-headless && \
    #apt -y install wget && \
    #apt -y install unzip && \
    #wget "https://download.geofabrik.de/europe/france/aquitaine-latest.osm.pbf" && \ 
    #wget "http://osm2po.de/releases/osm2po-5.5.5.zip" -O temp.zip  && \ 
    #unzip temp.zip  && \
    #rm temp.zip && \
    #java -Xmx512m -jar osm2po-core-5.5.5-signed.jar cmd=c prefix=aq aquitaine-latest.osm.pbf