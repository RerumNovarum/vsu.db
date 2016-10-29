SELECT st1.name || ' ' || st1.surname as st1,
       st2.name || ' ' || st2.surname as st2
FROM student st1, student st2
WHERE st1.student_id < st2.student_id
AND st1.city=st2.city;
