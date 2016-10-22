SELECT exam_id,COUNT(DISTINCT student_id) FROM exam_marks GROUP BY exam_id;
