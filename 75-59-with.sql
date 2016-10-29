WITH stm AS (
        SELECT st.student_id, st.surname, em.mark
        FROM student st, exam_marks em
        WHERE st.student_id=em.student_id
        GROUP BY(st.student_id, em.mark)
     )
SELECT s.surname
FROM stm s
WHERE not exists (SELECT 0 FROM stm WHERE stm.student_id=s.student_id AND stm.mark=5)
