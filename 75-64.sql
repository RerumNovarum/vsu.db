SELECT le.name, le.surname
FROM lecturer le, subj_lect sl, subject su
WHERE su.semester <= 2
AND su.subj_id=sl.subj_id
AND le.lecturer_id=sl.lecturer_id;
