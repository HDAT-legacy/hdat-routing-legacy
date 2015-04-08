shp2pgsql -c -D -s 4326 -I map.shp dasbgbroute | psql bgb

-- CREATE FUNCTION
psql -d bgb -f dijkstrahdat.sql

-- ADD A SOURCE AND A TARGET TO THE DASBGBROUTE TABLE
ALTER TABLE dasbgbroute ADD COLUMN source integer;
ALTER TABLE dasbgbroute ADD COLUMN target integer;

-- CREATE A TOPLOGY
SELECT pgr_createTopology('dasbgbroute', 0.000001, 'geom', 'gid');

-- ADD A COST AND REVERSE COST (THIS ENABLES ONE WAY ROADS) TO DASBGBROUTE
ALTER TABLE dasbgbroute ADD COLUMN cost float;
UPDATE dasbgbroute SET cost = st_length(geom);

ALTER TABLE dasbgbroute ADD COLUMN rcost double precision;
UPDATE dasbgbroute SET rcost = st_length(geom);

-- KRIJG DE DICHSTBIJZINDE NODES
-- TO DO IS OM DIT AL BINNENIN DE FUNCTIE TE DOEN
-- ROTTERDAM
select id from dasbgbroute_vertices_pgr order by st_distance(the_geom, st_setsrid(st_makepoint(4.483333333, 51.91666667), 4326)) limit 1;
-- BATAVIA
select id from dasbgbroute_vertices_pgr order by st_distance(the_geom, st_setsrid(st_makepoint(106.83667, -6.1830555), 4326)) limit 1;

-- KRIJG DE ROUTE
SELECT ST_Linemerge(ST_Union(pgr_dijkstra_hdat)) AS route
FROM pgr_dijkstra_hdat('dasbgbroute',9,23);



-- ==== HANDIGE TUSSENFUNCTIES VOOR CONTROLE EN TESTEN
-- DEZE FUNCTIE TOONT DE ROUTE TUSSEN TWEE NODES (IN DIT GEVAL NODE 9 NAAR 23)
-- GEEFT EEN TABEL WEER, MET DAARIN VOOR IEDER SEGMENT (EDGE) EEN APARTE ROW
SELECT seq, id1 AS node, id2 AS edge, cost
  FROM pgr_dijkstra(
    'SELECT gid AS id, source, target, cost, rcost AS reverse_cost FROM dasbgbroute',
    9, 23, true,true
) 

-- GEEFT EEN NETWERK ANALYSE MET DOODLOPENDE PUNTEN EN NIET AANGESLOTEN LIJNEN
-- BINNENIN JE PSQL TERMINAL DOEN
SELECT  pgr_analyzeGraph('dasbgbroute',0.001,'geom','gid','source','target');