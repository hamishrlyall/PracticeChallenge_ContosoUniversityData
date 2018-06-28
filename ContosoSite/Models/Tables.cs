using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ContosoUniversity.Models
{
    public class Course
    {
        public int CourseID { get; set; }
        public string Title { get; set; }
        public string Credits { get; set; }

    }
    public class Enrollments
    {
        public int EnrollmentID { get; set; }
        public decimal Grade { get; set; }
        public string Title { get; set; }
        public string LastName { get; set; }
    }
    public class Students
    {
        public int StudentID { get; set; }
        public string LastName { get; set; }

        public DateTime EnrollmentDate;
    }
}