-- pg_dump -t '"bgbPlaceGeo"' bgb > data_base.sql


shp2pgsql -c -D -s 4326 -I routebegin.shp dasbgbroute | psql bgb

ALTER TABLE dasbgbroute ADD COLUMN source integer;
ALTER TABLE dasbgbroute ADD COLUMN target integer;

SELECT pgr_createTopology('dasbgbroute', 0.000001, 'geom', 'gid');

ALTER TABLE dasbgbroute ADD COLUMN cost float;
UPDATE dasbgbroute SET cost = st_length(geom);

ALTER TABLE dasbgbroute ADD COLUMN rcost double precision;
UPDATE dasbgbroute SET rcost = st_length(geom);



-- ROTTERDAM
select id from dasbgbroute_vertices_pgr order by st_distance(the_geom, st_setsrid(st_makepoint(4.483333333, 51.91666667), 4326)) limit 1;
-- BATAVIA
select id from dasbgbroute_vertices_pgr order by st_distance(the_geom, st_setsrid(st_makepoint(106.83667, -6.1830555), 4326)) limit 1;

-- PRIAMAN
select id from dasbgbroute_vertices_pgr order by st_distance(the_geom, st_setsrid(st_makepoint(100.15, -0.6), 4326)) limit 1;

-- 20 naar 17
SELECT seq, id1 AS node, id2 AS edge, cost
  FROM pgr_dijkstra(
    'SELECT gid AS id, source, target, cost, rcost AS reverse_cost FROM dasbgbroute',
    9, 23, true,true
  ) 

-- REPLACE EDGE FOR GEOM
  create table bladiebla as SELECT seq, id1 AS node, id2 AS edge, di.cost, ST_asText(geom)
  FROM pgr_dijkstra(
    'SELECT gid AS id, source, target, cost FROM dasbgbroute',
    20, 9, false, false
  ) as di
  JOIN dasbgbroute
  ON di.id2 = dasbgbroute.gid

-- WRAPPER MET GEOM
SELECT seq, id1 AS node, id2 AS edge, cost, b.the_geom FROM pgr_dijkstra('
                SELECT gid AS id,
                         source::integer,
                         target::integer,
                         cost,
                         rcost AS reverse_cost
                        FROM dasbgbroute',
                9, 23, true, true) a LEFT JOIN dasbgbroute b ON (a.id2 = b.gid);
