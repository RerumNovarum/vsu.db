SELECT su.subj_id, su.subj_name
FROM subject su, subj_lect sl, lecturer l
WHERE su.subj_id=sl.subj_id
AND sl.lecturer_id=l.lecturer_id
AND l.surname LIKE 'Колесняк';
