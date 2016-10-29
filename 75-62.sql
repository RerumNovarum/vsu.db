SELECT COUNT(0)
FROM student st, exam_marks em
WHERE em.mark=5 AND st.student_id=em.student_id;
