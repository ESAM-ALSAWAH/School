using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication4.pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=SQL8002.site4now.net;Initial Catalog=db_a889d5_schooldb;User Id=db_a889d5_schooldb_admin;Password=Alaa6865978";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void LoginButton(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string check = "select count(*) from [users] where Email = '" + Email.Text + "'and Password ='" + Password.Text + "'";

            
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
    
            con.Close();

            if (temp == 1)
            {
                if (Email.Text.Trim() == "admin" && Password.Text == "123")
                {
                    

                    Session["userAdmin"] = "True";
                    Response.Redirect("../Dashboard/user.aspx");
                    return;
                }
                Session["user"] = Email.Text;
                Response.Redirect("Home.aspx");
            }
            else ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Email or Password Is Not Correct ')", true);
        }
    }
}
