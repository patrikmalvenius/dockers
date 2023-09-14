ALTER TABLE batiment ADD COLUMN  geom_triangle geometry;
ALTER TABLE batiment ADD COLUMN style json;
ALTER TABLE batiment ADD COLUMN shaders json;

UPDATE batiment  SET style = ('{ "walls": "#EEC900", "roof":"#FF0000", "floor":"#008000"}');
