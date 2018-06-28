/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM [Course]
DELETE FROM [Enrollment]
DELETE FROM [Student]

INSERT INTO [Course] (CourseID, Title, Credits) VALUES
(1, 'Economics', 3),
(2, 'Literature', 3),
(3, 'Chemistry', 4);

INSERT INTO Student (StudentID, LastName, FirstName, EnrollmentDate) VALUES
(1, 'Tibbetts', 'Donnie', '2013-09-01'),
(2, 'Guzman', 'Liza', '2012-01-13'),
(3, 'Catlett', 'Phil', '2011-09-03');

INSERT INTO [Enrollment] (EnrollmentID, Grade, CourseID, StudentID) VALUES
(1, 2.00, 1, 1),
(2, 3.50, 1, 2),
(3, 4.00, 2, 3),
(4, 1.80, 2, 1),
(5, 3.20, 3, 1),
(6, 4.00, 3, 2);

END;