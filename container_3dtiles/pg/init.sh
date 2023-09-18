#ogr2ogr -f "PostgreSQL" PG:"user=magic password=magic dbname=magic" -explodecollections -t_srs EPSG:4326 ./bati_ign/BATIMENT.shp
ogr2ogr -f "PostgreSQL" PG:"user=magic password=magic dbname=magic" -nlt "POLYHEDRALSURFACE Z" -nln batiment -t_srs EPSG:4326 ./bati_ign/BATIMENT.shp
psql -v ON_ERROR_STOP=1 --dbname "magic" --username magic -f ./sql/init.sql



