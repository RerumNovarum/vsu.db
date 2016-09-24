SELECT UPPER(name) as name, UPPER(surname) as surname, stipend*100 as scholarship
FROM student
WHERE kurs in (1,2,4);
