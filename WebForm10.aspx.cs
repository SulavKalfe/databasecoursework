using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace databasecoursework
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebStudentfullinfo.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebCoursefullinfo.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebInstructor.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebLesson.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm10.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebStudent.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebEnrollment.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebStatus.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebCourse.aspx");
        }
    }
}