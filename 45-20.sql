SELECT (semester/2 + 1) as year,COUNT(DISTINCT subj_id) FROM subject GROUP BY (semester / 2);
