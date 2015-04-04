shp2pgsql -c -D -s 4326 -I shoo.shp testroute | psql bgb

pg_dump -t '"bgbPlaceGeo"' bgb > data_base.sql