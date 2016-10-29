SELECT COUNT(0)
FROM student st
LEFT OUTER JOIN exam_marks em
ON st.student_id=em.student_id;
