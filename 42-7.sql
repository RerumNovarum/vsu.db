SELECT
    'Код-' || univ_id || '; ' ||
    regexp_replace(univ_name, '([[:alpha:]])[^_]*_?', E'\\1', 'g')
    || '-г.' || city ||
    ' Рейтинг=' || rating || '.'
    as university
    FROM university;
