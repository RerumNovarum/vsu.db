-- same as 42-8 but rounding rating to nearest hundred
SELECT
    'Код-' || univ_id || '; ' ||
    regexp_replace(univ_name, '([[:alpha:]])[^_]*_?', E'\\1', 'g')
    || '-г.' || city ||
    ' Рейтинг=' || ROUND(rating,-2) || '.'
    as university
    FROM university;
