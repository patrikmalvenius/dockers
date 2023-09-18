create extension postgis_sfcgal;
set postgis.backend = sfcgal;

ALTER TABLE batiment ADD COLUMN geom_triangle geometry;
ALTER TABLE batiment ADD COLUMN style json;
ALTER TABLE batiment ADD COLUMN shaders json;
--update batiment set geom_triangle = ST_Tesselate(wkb_geometry);
update batiment set geom_triangle = st_extrude(wkb_geometry, 0.0::float, 0.0::float, hauteur::float);
UPDATE batiment  SET style = ('{ "walls": "#EEC900", "roof":"#FF0000", "floor":"#008000"}');
update batiment set shaders = '{
  "PbrMetallicRoughness": {
    "MetallicRoughness": [
      "#000000",
      "#000000",
      "#000000",
      "#000000",
      "#000000",
      "#000000",
      "#000000",
      "#000000",
      "#000000",
      "#000000",
      "#000000",
      "#000000"
    ],
    "BaseColors": [
      "#008000",
      "#008000",
      "#FF0000",
      "#FF0000",
      "#EEC900",
      "#EEC900",
      "#EEC900",
      "#EEC900",
      "#EEC900",
      "#EEC900",
      "#EEC900",
      "#EEC900"
    ]
  }
}';
--if i import in 4978 tesselation wont work bc triangles not planar
update batiment set geom_triangle = st_transform(geom_triangle, 4978);

CREATE INDEX ON batiment USING gist(st_centroid(st_envelope(geom_triangle)));

