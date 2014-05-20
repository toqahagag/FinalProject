using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.Controls
{
    public partial class Loginc : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            if (Roles.IsUserInRole("Admin"))
            {
                Response.Redirect("~//AdminPage//Welcome.aspx");
            }
            else if (Roles.IsUserInRole("Teacher"))
            {
                Response.Redirect("~//TeacherPage//Welcome teacher.aspx");
            }
        }

       
    }
}