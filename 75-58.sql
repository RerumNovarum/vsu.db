SELECT sl1.lecturer_id, sl2.lecturer_id
FROM subj_lect sl1, subj_lect sl2
WHERE sl1.lecturer_id < sl2.lecturer_id
AND sl1.subj_id = sl2.subj_id;
