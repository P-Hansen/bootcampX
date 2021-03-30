SELECT SUM(duration)
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.start_date = '2018-02-12';