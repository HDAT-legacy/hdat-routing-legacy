-- DROP FUNCTION pgr_dijkstra_hdat(varchar,int,int);
-- QUERY
-- SELECT * FROM pgr_dijkstra_hdat('dasbgbroute',9,23);
-- MERGEN
-- SELECT ST_Linemerge(st_union(pgr_dijkstra_hdat)) AS bla
-- FROM pgr_dijkstra_hdat('dasbgbroute',9,23);


CREATE OR REPLACE FUNCTION pgr_dijkstra_hdat(
                IN tbl varchar,
                IN source integer,
                IN target integer,
                -- OUT seq integer,
                -- OUT gid integer,
                OUT geom geometry
        )
        RETURNS SETOF geometry AS
$BODY$
DECLARE
        SQL     text;
        rec     record;
BEGIN
        SQL     := 'SELECT gid,geom FROM ' ||
                        'pgr_dijkstra(''SELECT gid as id, source::int, target::int, '
                                        || 'cost, rcost AS reverse_cost FROM '
                                        || quote_ident(tbl) || ''', '
                                        || quote_literal(source) || ', '
                                        || quote_literal(target) || ' , true, true), '
                                || quote_ident(tbl) || ' WHERE id2 = gid ORDER BY seq';

        FOR rec IN EXECUTE SQL
        LOOP
                -- seq     := seq + 1;
                -- gid     := rec.gid;
                geom    := rec.geom;
                RETURN NEXT;
        END LOOP;
        RETURN;
END;
$BODY$
LANGUAGE 'plpgsql' VOLATILE STRICT;