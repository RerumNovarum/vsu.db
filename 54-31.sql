SELECT surname,name,student_id FROM student
WHERE city NOT IN (SELECT  DISTINCT city FROM university);
