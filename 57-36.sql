SELECT s.subj_name 
FROM subject s
WHERE EXISTS (
    SELECT 0
    FROM exam_marks em
    WHERE em.subj_id = s.subj_id
    HAVING COUNT(DISTINCT(em.student_id)) > 1
);
