using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.AdminPage
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = Membership.GetAllUsers();
                GridView1.DataBind();
                RadioButtonList1.DataSource = Roles.GetAllRoles();
                RadioButtonList1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string username = GridView1.Rows[e.NewSelectedIndex].Cells[0].Text;
            foreach (string role in Roles.GetAllRoles())
            {
                bool result = Roles.IsUserInRole(username, role);
                RadioButtonList1.Items.FindByText(role).Selected = result;
                ViewState["username"] = username;
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string username = (string)ViewState["username"];
            foreach (string role in Roles.GetAllRoles())
            {
                bool result = Roles.IsUserInRole(username, role);
                if (RadioButtonList1.Items.FindByText(role).Selected == false && result == true)
                {
                    Roles.RemoveUserFromRole(username, role);
                }
                else if (result == false && RadioButtonList1.Items.FindByText(role).Selected == true)
                {
                    Roles.AddUserToRole(username, role);
                }
            }
        }

        protected void btn_signout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

       
    }
}