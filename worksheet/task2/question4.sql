-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName
.mode columns
.headers on

SELECT Student.StudentId, FirstName, LastName, CourseName
FROM Enrolment
JOIN Student ON Student.StudentId = Enrolment.EnrolmentId
JOIN Course ON Enrolment.CourseId = Course.CourseId