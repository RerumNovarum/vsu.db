SELECT DISTINCT su.subj_name
FROM subject su
WHERE 50 < (SELECT SUM(su2.hour) FROM subject su2 WHERE su2.subj_id=su.subj_id);
