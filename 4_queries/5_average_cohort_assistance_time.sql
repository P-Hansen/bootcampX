SELECT cohorts.name,
AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_request_duration
FROM students
JOIN assistance_requests ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_request_duration;