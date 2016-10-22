SELECT 'advanced' as comment, s.name, s.surname
FROM student s
WHERE 3 <ALL(SELECT mark FROM exam_marks em WHERE em.student_id=s.student_id)
GROUP BY s.student_id
UNION
SELECT 'flunkey' as comment, s.name, s.surname
FROM student s
WHERE 2 <=ALL(SELECT mark FROM exam_marks em WHERE em.student_id=s.student_id)
GROUP BY s.student_id
UNION
SELECT 'absent' as comment, s.name, s.surname
FROM student s
WHERE 0 < (SELECT COUNT(0) FROM exam_marks em WHERE em.student_id=s.student_id AND mark IS NULL)
GROUP BY s.student_id;
