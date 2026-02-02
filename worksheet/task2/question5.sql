-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
.mode columns
.headers on

SELECT Student.StudentId, FirstName, LastName
FROM Student
JOIN Student ON Student.StudentId = Enrolment.EnrolmentId
ORDER BY Student.StudentId
LIMIT 20