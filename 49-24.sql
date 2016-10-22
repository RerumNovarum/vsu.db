SELECT exam_date,SUM(mark) as sum_mark FROM exam_marks GROUP BY exam_date ORDER BY sum_mark
