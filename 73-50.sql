SELECT u.univ_name,
       MAX(st.stipend) as max_scholarship
FROM university u, student st
WHERE u.rating > 300
AND st.univ_id=u.univ_id
GROUP BY(u.univ_name);
