# this is a sample command to be executed from the pg2b3dm-container after all is initialized

pg2b3dm -h pg_db -U magic -c geom_triangle -t batiment -d magic -a ogc_fid,hauteur,nature,usage1,usage2 --shaderscolumn shaders --sql_command_timeout 30000

#tesselate_building -h pg_db -U magic -d magic -f cesium -t bati_sauv -i wkb_geometry -o geom_triangle --heightcolumn hauteur --idcolumn ogc_fid --stylecolumn style --shaderscolumn shaders

#tesselate building sets all buildings to z=0 -> works like shit for me since i have all heights in pseudo-orthometric.
# can not set st_translate to add z_sol_min after tesselated because that warps the buildings (geodesic mindfuck, z is perpendicular to santas beard)
# that is why after going bald i settled on some sql instead, see init.sql


