SELECT s.student_id,s.name, s.surname, su.subj_name
FROM student s, exam_marks em, subject su
WHERE em.mark IS NOT NULL
AND s.student_id=em.student_id
AND su.subj_id=em.subj_id;
