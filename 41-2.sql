SELECT UPPER(LEFT(name,1) || '.' || surname) ||
    '; место жительства-' || UPPER(city) ||
    '; родился - ' ||
    to_char(birthday, 'FMDD.FMMM.YY')
    as student
    from student;
