SELECT emsu.subj_name, st.surname, emsu.mark
FROM student st,
     (SELECT _su.subj_id,_su.subj_name,_em.mark,_em.student_id
        FROM subject _su, exam_marks _em
        WHERE _su.subj_id=_em.subj_id
        AND _em.mark >= 4) emsu
WHERE st.student_id=emsu.student_id;
