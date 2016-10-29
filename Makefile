SQL=psql
DBNAME=vsu.db
SELECT_QUERIES=$(patsubst %.sql,%.out,$(wildcard [[:digit:]]*.sql))

.PHONY: all

.PHONY: clean

.PHONY: init

.PHONY: drop

all: ${SELECT_QUERIES}

clean: 
	rm -f ${SELECT_QUERIES}

drop:
	${SQL} ${DBNAME} -f drop.sql -o /dev/null
	touch init.sql

init: drop init.sql
	${SQL} ${DBNAME} -f init.sql -o /dev/null
#	${SQL} ${DBNAME} -f init-create.sql -o /dev/null
#	${SQL} ${DBNAME} -f init-insert.sql -o /dev/null

%.out: %.sql
	${SQL} ${DBNAME} -f $*.sql > $*.out || rm $*.out
