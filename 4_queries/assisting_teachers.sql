SELECT DISTINCT (teachers.name) AS teacher, (cohorts.name) AS cohort
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohort_id = students.cohort_id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;