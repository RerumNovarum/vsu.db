SELECT LOWER(LEFT(name,1) || '.' || surname) ||
    '; место жительства-' || LOWER(city) ||
    '; родился - ' ||
    to_char(birthday, 'FMDD.FMMon.YY')
    as student
    from student;
