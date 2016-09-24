-- NOTE: explicit coercion from char(N) to text are needed
-- to avoid unneeded padding
SELECT upper(concat_ws(
    ';',
    student_id,
    surname::text,
    name::text,
    stipend,
    kurs,
    city::text,
    birthday,
    univ_id)) as student
    FROM student;
