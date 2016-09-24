-- note: there is no matching records
-- textbook and database aren't synchronized
SELECT surname from student WHERE surname LIKE 'И%' ORDER BY surname LIMIT 1;
