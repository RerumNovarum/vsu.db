SELECT s.name, s.surname
FROM student s, university u
WHERE s.univ_id=u.univ_id AND u.rating>300;
