using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication4.Dashboard
{
    public partial class movies : System.Web.UI.Page
    {
        string connectionString = "Data Source=SQL8002.site4now.net;Initial Catalog=db_a889d5_schooldb;User Id=db_a889d5_schooldb_admin;Password=Alaa6865978";

        
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
            if (!FileImage.HasFile || title.Text.Trim().Length == 0 || path.Text.Trim().Length == 0)
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

                string pathImage = "~/uploads/movies/" + (FileName + uid).ToString() + ExtensionImage;
                FileImage.SaveAs(Server.MapPath(pathImage));
                string ins = "Insert into [movies] (Title,Description,Image,Path,Date) values('" + title.Text + "','" + description.Text + "','" + pathImage + "','" + path.Text + "','" + DateTime.Now.ToString() + "')";
                SqlConnection con = new SqlConnection(connectionString);

                SqlCommand com = new SqlCommand(ins, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                
                GridView1.DataBind();
                title.Text = "";
                description.Text = "";
                path.Text = "";
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            
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

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

            
            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

            int id = Int32.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

            
            FileUpload fileUpload = row.Cells[0].FindControl("FileUploadImage") as FileUpload;
            
            
            
            if (fileUpload != null && fileUpload.HasFile)
            {
                
            
                Random randomNumber = new Random();
                var uid = randomNumber.Next(100000, 1000000);

                string ExtensionImage = Path.GetExtension(fileUpload.FileName);
                string FileName = Path.GetFileNameWithoutExtension(fileUpload.FileName) + uid;

                string pathImage = "~/uploads/movies/" + (FileName + uid).ToString() + ExtensionImage;
                fileUpload.SaveAs(Server.MapPath(pathImage));
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand("update movies set Image='" + pathImage+ "'  where Id=" + id+ "", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

     
    }
}