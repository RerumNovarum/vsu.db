SELECT u.univ_name, u.city
FROM university u,
    (SELECT MAX(_u.rating) as rating
        FROM university _u
        WHERE _u.univ_name = 'Воронежский государственный университет') as vsu
WHERE u.rating > vsu.rating
