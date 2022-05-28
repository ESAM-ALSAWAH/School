using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication4
{
    public partial class songs : System.Web.UI.Page
    {
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MyHomeWork.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count == 0)
            {
                Label1.Visible = true;
            }
            else Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!FileImage.HasFile ||  title.Text.Trim().Length == 0 || path.Text.Trim().Length == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('SomeThing Not Right !!')", true);
                return;

            }
            try
            {
                Random randomNumber = new Random();
                var uid = randomNumber.Next(100000, 1000000);

                string ExtensionImage = Path.GetExtension(FileImage.FileName);
                string FileName = Path.GetFileNameWithoutExtension(FileImage.FileName) + uid;

                string pathImage = "~/uploads/songs/" + (FileName + uid).ToString() + ExtensionImage;
                FileImage.SaveAs(Server.MapPath(pathImage));
                string ins = "Insert into [songs] (Title,Image,Path,Date) values('" + title.Text + "','" +  pathImage + "','" + path.Text+ "','" + DateTime.Now.ToString() + "')";
                SqlConnection con = new SqlConnection(connectionString);

                SqlCommand com = new SqlCommand(ins, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();

                GridView1.DataBind();
                if (GridView1.Rows.Count == 0)
                {
                    Label1.Visible = true;
                }
                else Label1.Visible = false;
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow) GridView1.Rows[e.RowIndex];
            Label lblDeleteImageName = (Label)row.FindControl("imageLabel");
            ImageDeleteFromFolder(lblDeleteImageName.Text);
            
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            GridView1.DataBind();

            if (GridView1.Rows.Count == 0)
            {
                Label1.Visible = true;
            }
            else Label1.Visible = false;
        }
        protected void ImageDeleteFromFolder(string imagename)
        {

            string path = Server.MapPath(
        imagename);
            FileInfo file = new FileInfo(path);
            if (file.Exists) //check file exsit or not
            {
                file.Delete();
            }

            
        }
    }
}