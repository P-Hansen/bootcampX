SELECT DISTINCT teachers.name, cohorts.name
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assistance_requests ON students.id = assistance_requests.student_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;