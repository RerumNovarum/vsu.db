SELECT em1.student_id
FROM exam_marks em1
WHERE em1.mark IN (SELECT em2.mark FROM exam_marks em2 WHERE em2.student_id=12);
