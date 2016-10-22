SELECT exam_date,AVG(mark) as average ,MIN(mark) as minimum,MAX(mark) as maximum
FROM exam_marks
GROUP BY exam_date
ORDER BY average,minimum,maximum;
