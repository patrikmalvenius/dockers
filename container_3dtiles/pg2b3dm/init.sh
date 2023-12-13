# this is a sample command to be executed from the pg2b3dm-container after all is initialized
# pg2b3dm -h pg_db -U magic -c geom_triangle -t batiment -d magic -a id,hauteur,nature,usage1,usage2 --use_implicit_tiling 'false' --default_color '#b7b9bd' --add_outlines 'true' 

i3dm.export -c "Host=pg_db;Username=magic;Password=magic;Database=magic;Port=5432" -t public.arbres



# default bounding volume of 0,100 doesn't cut it in the pyrenees
pg2b3dm -h pg_db -U magic -c geom_triangle -t batiment -d magic -a id,hauteur,nature,usage1,usage2 --use_implicit_tiling 'false' --default_color '#b7b9bd' --add_outlines 'true' --boundingvolume_heights 0,3000 
