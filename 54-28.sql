SELECT name,surname FROM student s
WHERE s.student_id IN
(
    SELECT DISTINCT em.student_id FROM exam_marks em 
    WHERE subj_id=14
    GROUP BY em.student_id,mark
    HAVING mark < AVG(mark)
);

