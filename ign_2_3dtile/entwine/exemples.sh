#get copc:

#SAUVETERRE:
#https://storage.sbg.cloud.ovh.net/v1/AUTH_63234f509d6048bca3c9fd7928720ca1/ppk-lidar/EQ/LHD_FXX_0380_6264_PTS_C_LAMB93_IGN69.copc.laz

#PAU:
#https://storage.sbg.cloud.ovh.net/v1/AUTH_63234f509d6048bca3c9fd7928720ca1/ppk-lidar/FQ/LHD_FXX_0425_6254_PTS_C_LAMB93_IGN69.copc.laz

#PDAL PIPELINE:
#FILTER BATI:
pdal pipeline ./data/pdal_pipelines/filter_bati.json -v 8 
#FILTER VEG:
pdal pipeline ./data/pdal_pipelines/filter_veg.json -v 8 
#FILTER AND COLOR VEG:
pdal pipeline ./data/pdal_pipelines/filter_and_colorize.json -v 8 

#ENTWINE:
entwine build -c ../data/entwine_configs/config.json
# have to manipulate the ept.json by adding:
#"authority": "EPSG",
#"horizontal": "4978"
#under the srs key
#EPT-TOOLS:
ept tile --input ../data/out/entwine/veg_color_ecef --output ../data/out/tiles/veg_color