SELECT s.subj_name
FROM exam_marks em, subject s
WHERE s.subj_id=em.subj_id
AND em.MARK >ALL (
    SELECT em2.mark
    FROM exam_marks em2
    WHERE em2.subj_id=105
)
GROUP BY s.subj_id;
