-- 17. Напишите  запрос для  получения  среднего балла для  каждого студента
SELECT surname,name,AVG(mark) FROM student,exam_marks WHERE student.student_id=exam_marks.student_id GROUP BY student.student_id;
