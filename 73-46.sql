SELECT s.student_id,s.name, s.surname, emsu.subj_name
FROM student s
LEFT OUTER JOIN (
    SELECT em.student_id,su2.subj_name
    FROM exam_marks em, subject su2
    WHERE su2.subj_id=em.subj_id) emsu
ON s.student_id=emsu.student_id;
