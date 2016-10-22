SELECT 'high' as comment, univ_name
FROM university
WHERE rating >= 300
UNION
SELECT 'low' as comment, univ_name
FROM university
WHERE rating < 300;
