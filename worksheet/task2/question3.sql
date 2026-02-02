-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
.mode columns
.headers on

SELECT DepartmentName, COUNT(StudentId)
FROM Course
JOIN Enrolment ON Course.CourseId=Enrolment.CourseId
JOIN Department ON Course.DepartmentId = Department.departmentID
GROUP BY DepartmentName
LIMIT 10
