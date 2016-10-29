SELECT st.name, st.surname
FROM student st
WHERE 3 in (SELECT em.mark FROM exam_marks em WHERE em.student_id=st.student_id)
AND 4 in (SELECT em.mark FROM exam_marks em WHERE em.student_id=st.student_id)
AND 5 in (SELECT em.mark FROM exam_marks em WHERE em.student_id=st.student_id);
