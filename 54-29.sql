SELECT COUNT(DISTINCT subj_id) FROM exam_marks em1
WHERE em1.student_id IN
(
    SELECT student_id FROM exam_marks em2 GROUP BY student_id HAVING COUNT(DISTINCT subj_id) > 20
);
