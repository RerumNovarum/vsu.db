SELECT s.surname,em.subj_id
FROM student s, exam_marks em
WHERE s.student_id=em.student_id
GROUP BY (s.surname,em.subj_id);
