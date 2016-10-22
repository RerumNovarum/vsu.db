SELECT surname,name,student_id FROM student s
WHERE city !=
(
    SELECT city FROM university u WHERE s.univ_id=u.univ_id
);
