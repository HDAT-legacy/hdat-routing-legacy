shp2pgsql -c -D -s 4326 -I shoo.shp testroute | psql bgb

pg_dump -t '"bgbPlaceGeo"' bgb > data_base.sql


shp2pgsql -c -D -s 4326 -I routebegin.shp dasbgbroute | psql bgb

alter table dasbgbroute add column source integer;
alter table dasbgbroute add column target integer;

pgr_createTopology('dasbgbroute', 0.0001, 'geom', 'gid')

-- ADD INDICES
CREATE INDEX dasbgbroute_source_idx ON dasbgbroute("source");
CREATE INDEX dasbgbroute_target_idx ON dasbgbroute("target");
