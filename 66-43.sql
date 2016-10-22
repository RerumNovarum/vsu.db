SELECT name,surname,'студент' as job
FROM student s
WHERE city='Воронеж'
UNION
SELECT name,surname,'преподаватель' as job
FROM lecturer l
WHERE city='Воронеж';
