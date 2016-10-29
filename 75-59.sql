SELECT st.student_id, st.surname, em.mark
FROM student st, exam_marks em
WHERE st.student_id=em.student_id
AND em.mark!=5
GROUP BY(st.student_id, em.mark);
