dropdb pgo
createdb pgo
psql -f pgo.pgdump.sql pgo
dropdb knights
createdb knights
psql -f knights.pgdump.sql knights
