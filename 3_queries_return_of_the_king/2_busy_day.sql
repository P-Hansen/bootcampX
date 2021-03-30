SELECT assignments.day as day, COUNT(assignments.day) as total_assignments
FROM assignments
GROUP BY assignments.day
HAVING COUNT(assignments.day) >= 10
ORDER BY day;
