-- should be something like the commented out,
-- but yr damn tasks require student to do it wrong
-- SELECT mark FROM exam_marks em, student s
-- WHERE s.surname = 'Иванов' AND em.student_id=s.student_id;
SELECT mark FROM exam_marks
WHERE student_id IN (SELECT s.student_id FROM student s WHERE s.surname = 'Иванов');
