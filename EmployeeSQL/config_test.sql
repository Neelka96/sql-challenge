SELECT name, setting, source FROM pg_settings WHERE name = 'datestyle';


SELECT pg_database.datname, dateconfig FROM pg_database WHERE datname = "sql-challenge_db";

SHOW datestyle;

SELECT name, setting, source, sourcefile, sourceline
FROM pg_settings
WHERE name = 'datestyle';

SELECT * FROM pg_settings WHERE name = 'datestyle';


SELECT * FROM pg_catalog.pg_database WHERE datname = 'sql-challenge_db';


SELECT * FROM pg_roles WHERE rolname = 'postgres';

SHOW config_file;
