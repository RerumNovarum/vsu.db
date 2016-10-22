SELECT s.name,s.surname
FROM student s
WHERE EXISTS(
    SELECT 0 FROM university u
    WHERE u.univ_id = s.univ_id
    AND u.rating > 300
);
