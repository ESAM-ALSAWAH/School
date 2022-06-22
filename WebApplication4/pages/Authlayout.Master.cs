using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.pages
{
    public partial class Authlayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Panel1.Visible = false;
                LogoutButtonNavbar.Visible = true;
            }
            else
            {
                Panel1.Visible = true;
                
                LogoutButtonNavbar.Visible= false;
            }
        }

        protected void LoginButtonNavbar_Click(object sender, EventArgs e)
        {

            Response.Redirect("Login.aspx");

        }

        protected void RegisterButtonNavbar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void LogoutButtonNavbar_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect(Request.RawUrl);

        }
    }
}