SELECT s.name, s.surname
FROM student s
-- that's stupid, but that's exactly what was asked
WHERE s.city <>ANY ( 
    SELECT u.city FROM university u
);
