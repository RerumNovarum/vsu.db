SELECT st.surname, st.name, su.subj_name, em.mark
FROM student st, subject su, exam_marks em
WHERE st.student_id=em.student_id
AND em.mark >= 4
AND su.subj_id=em.subj_id;
