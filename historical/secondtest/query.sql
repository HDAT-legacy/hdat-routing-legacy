

alter table dasbgbroute add column source integer;
alter table dasbgbroute add column target integer;

SELECT pgr_createTopology('dasbgbroute', 0.01000, 'geom', 'gid');

SELECT  pgr_analyzeGraph('dasbgbroute',0.001,'geom','gid','source','target');

-- ALTER TABLE dasbgbroute ADD COLUMN cost float;
-- UPDATE dasbgbroute SET cost = st_length(geom);


-- ALTER TABLE dasbgbroute ADD COLUMN rcost double precision;
-- UPDATE dasbgbroute SET rcost = st_length(geom);