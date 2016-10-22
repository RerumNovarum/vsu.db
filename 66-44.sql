SELECT name,surname,'студент' as job
FROM student s
WHERE 'Воронежский государственный университет'=
    (SELECT univ_name FROM university u
        WHERE u.univ_id=s.univ_id)
UNION
SELECT name,surname,'преподаватель' as job
FROM lecturer l
WHERE 'Воронежский государственный университет'=
    (SELECT univ_name FROM university u
        WHERE u.univ_id=l.univ_id);
