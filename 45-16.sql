-- 16. Напишите  запрос для  получения  среднего балла для  каждого курса по каждому предмету. 
SELECT student.kurs,AVG(exam_marks.mark) FROM exam_marks,student
WHERE student.student_id=exam_marks.student_id
GROUP BY student.kurs;
