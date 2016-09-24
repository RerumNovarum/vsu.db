SELECT concat_ws(
    ' ',
    INITCAP(name),
    INITCAP(surname),
    'родился в',
    EXTRACT (YEAR FROM birthday),
    'году')
    as student
    from student;
