psql -v ON_ERROR_STOP=1 --username postgres --host pweb-db.cocqv7kcsden.eu-west-2.rds.amazonaws.com <<-EOSQL
    CREATE DATABASE pweb;
    CREATE USER pwebuser WITH ENCRYPTED PASSWORD 'pwebpasswd';
    GRANT ALL ON DATABASE pweb TO "pwebuser";
    ALTER USER pwebuser CREATEDB;
EOSQL
