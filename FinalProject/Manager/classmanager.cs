using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Manager
{
    public class classmanager
    {
        OnlineExamEntities e = new OnlineExamEntities();

        public List<Course> GetAll()
        {
            return e.Course.ToList();
        }
        //////////////////////////////////
        public Course GetById(int Id)
        {
            return e.Course.FirstOrDefault(c => c.Id == Id);
        }
        /////////////////////////////////
        public Course Insertcourse(Course c)
        {
            Course c3 = null;
            if (c != null)
            {
                int x = e.Course.Where(c2 => c2.Name == c.Name).Count();
                if (x == 0)
                {
                    c3 = e.Course.Add(c);
                    e.SaveChanges();
                }

            }
            return c3;
        }


        /// ////////////////////////////////////

        public Course Deletecourse(Course c)
        {
            Course c3 = null;
            if (c != null)
            {
                c3 = e.Course.FirstOrDefault(c2 => c2.Id == c2.Id);
                if (c3 != null)
                {
                    e.Course.Remove(c);
                    e.SaveChanges();
                }
            }
            return c3;
        }

        //////////////////////////////////////
        public Course updateCourse(Course c)
        {
            Course c3 = null;
            if (c != null)
            {
                c3 = e.Course.FirstOrDefault(c2 => c2.Id == c.Id);
                if (c3 != null)
                {
                    c3.Name = c.Name;
                    c3.Duration = c.Duration;

                    e.SaveChanges();
                }
            }
            return c3;
        }
    }
}