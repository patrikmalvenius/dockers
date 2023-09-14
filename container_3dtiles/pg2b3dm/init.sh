#tesselate_building -h localhost -p 5418 -U magic -d magic -f cesium -t batiment -i wkb_geometry -o geom_triangle --heightcolumn hauteur --idcolumn ogc_fid --stylecolumn style --shaderscolumn shaders

tesselate_building -h pg_db -U magic -d magic -f cesium -t batiment -i wkb_geometry -o geom_triangle --heightcolumn hauteur --idcolumn ogc_fid --stylecolumn style --shaderscolumn shaders

pg2b3dm -h pg_db -U magic -c geom_triangle -t batiment -d magic -a ogc_fid,hauteur,nature,usage1,usage2 --shaderscolumn shaders --sql_command_timeout 30000
