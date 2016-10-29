SELECT u1.univ_name as u1,
       u2.univ_name as u2
FROM university u1, university u2
WHERE u1.univ_id < u2.univ_id
AND u1.city=u2.city;
