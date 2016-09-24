SQL=psql
DBNAME=vsu.db
SELECT_QUERIES= 27-1.out 27-2.out 27-3.out \
				27-4.out 27-5.out 27-6.out \
				27-7.out 27-8.out 27-9.out \
				27-10.out \
				30-1.out 30-2.out 30-3.out \
				30-4.out 30-5.out 30-6.out \
				41-1-student-semi-sep.out \
				41-2.out 41-3.out 42-4.out \
				42-5.out 42-6.out 42-7.out \
				42-8.out \
				44-9.out 44-10.out 44-11.out \
				45-12.out 45-13.out 45-14.out \
				45-15.out 45-16.out 45-17.out \
				45-18.out 45-19.out 45-20.out \
				49-21.out 49-22.out 49-23.out \
				49-24.out 49-25.out \
				55-26.out 55-27.out 55-28.out \
				55-29.out 55-30.out 55-31.out \
				55-32.out


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
	${SQL} ${DBNAME} -f $*.sql > $*.out
