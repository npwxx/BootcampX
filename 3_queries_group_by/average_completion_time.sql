SELECT students.name as student, avg(duration) as average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
WHERE students.end_date is NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;