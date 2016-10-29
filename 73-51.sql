SELECT st.surname, st.name, u.rating
FROM student st
LEFT OUTER JOIN university u
ON st.univ_id=u.univ_id
ORDER BY (st.surname, st.name);
