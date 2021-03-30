SELECT assignments.day as day, COUNT(assignments.day) as total_assignments
FROM assignments
GROUP BY assignments.day
ORDER BY day;