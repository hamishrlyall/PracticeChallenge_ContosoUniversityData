CREATE TABLE [dbo].[Enrollment]
(
	[EnrollmentID] INT NOT NULL,
	[Grade] DECIMAL(3, 2) NULL,
	[CourseID] INT NOT NULL,
	[StudentID] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([EnrollmentID] ASC),
	CONSTRAINT [FK_Enrollment_CourseID] FOREIGN KEY ([CourseID]) REFERENCES Course ([CourseID]) ON DELETE CASCADE,
	CONSTRAINT [FK_Enrollment_StudentID] FOREIGN KEY ([StudentID]) REFERENCES Student ([StudentID]) ON DELETE CASCADE

)
