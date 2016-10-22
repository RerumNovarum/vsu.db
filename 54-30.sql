SELECT s1.surname,s1.name,s1.student_id
FROM student s1
WHERE s1.stipend = (
    SELECT MAX(s2.stipend)
    FROM student s2
    WHERE s1.city=s2.city
);
