SELECT u1.univ_name
FROM university u1
WHERE rating >= (
    SELECT u2.rating
    FROM university u2
    WHERE u2.univ_name = 'Воронежский государственный университет'
)
