-- 17. Напишите  запрос для  получения  среднего балла для  каждого экзамена
SELECT exam_id,AVG(mark) FROM exam_marks GROUP BY exam_id;
