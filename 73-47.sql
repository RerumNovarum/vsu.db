SELECT s.student_id,s.name, s.surname, su.subj_name
FROM student s, exam_marks em, subject su
WHERE s.student_id=em.student_id,su.subj_id=em.subj_id;
