SELECT name,surname FROM student s
WHERE s.student_id IN
(
    SELECT DISTINCT em1.student_id FROM exam_marks em1
    WHERE em1.subj_id=12 AND em1.mark > (
        SELECT AVG(em2.mark) FROM exam_marks em2
    )
);
