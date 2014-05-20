using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.Manager;

namespace FinalProject.Controls
{
    public partial class ManageCourse : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                CheckBoxList1.DataSource = Roles.GetUsersInRole("Teacher");
                CheckBoxList1.DataBind();
            }
        }
        classmanager c_man = new classmanager();


        protected void sel_btn_Click(object sender, EventArgs e)
        {

            int iid = Convert.ToInt32(ddl.SelectedValue);
            Course c = c_man.GetById(iid);

            name_tb.Text = c.Name.ToString(); ;
            du_tb.Text = c.Duration.ToString();
        }

        protected void Create_Click(object sender, EventArgs e)
        {

            Course co = new Course();
            if (name_tb.Text != null  && du_tb.Text != null )
            {
                co.Name = name_tb.Text.ToString();
                co.Duration = Convert.ToInt32(du_tb.Text);
                c_man.Insertcourse(co);
                ddl.DataBind();
                name_tb.Text = "";
                du_tb.Text = "";
            }

        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ddl.SelectedValue);

            Course co = c_man.GetById(id);
            co.Name = name_tb.Text.ToString();
            co.Duration = Convert.ToInt32(du_tb.Text);
            string teacherName = CheckBoxList1.SelectedValue;
            MembershipUser userName = Membership.GetUser(teacherName);
           Guid userid =(Guid) userName.ProviderUserKey;
            Response.Write(userid);
            Course c = new Course();
            OnlineExamEntities ole = new OnlineExamEntities();
           co= ole.Course.Where(c1 => c1.Id == id).FirstOrDefault();
            aspnet_Users user = ole.aspnet_Users.Where(myuser => myuser.UserId == userid).FirstOrDefault();
            co.aspnet_Users.Add(user);
            ole.SaveChanges();
            if (name_tb.Text != null && du_tb.Text != null)
            {

                c_man.updateCourse(co);
                ddl.DataBind();
                name_tb.Text = "";
                du_tb.Text = "";
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ddl.SelectedValue);

            Course co = c_man.GetById(id);
            if (name_tb.Text != null  && du_tb.Text != null )
            {

                c_man.Deletecourse(co);
                ddl.DataBind();
                name_tb.Text = "";
                du_tb.Text = "";
            }
        }

        protected void btn_signout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}