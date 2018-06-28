using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ContosoSite.Models;

namespace ContosoSite.ViewModels
{
    public class CourseIndexData
    {
        public IEnumerable<Course> Courses { get; set; }
        public IEnumerable<Student> Students { get; set; }
        public IEnumerable<Enrollment> Enrollments { get; set; }
    }
}