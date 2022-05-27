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
    public partial class stories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Random randomNumber = new Random();
            var uid= randomNumber.Next(100000, 1000000);
            string Extension = Path.GetExtension(FileUpload1.FileName);
            string FileName = Path.GetFileNameWithoutExtension(FileUpload1.FileName) + uid;
            string directoryPath = Server.MapPath(string.Format("~/uploads/stories/{0}/", FileName));
            Directory.CreateDirectory(directoryPath);
            try
            {
                string pathFile= "~/uploads/stories/" + FileName + "/" + FileName + Extension;
                FileUpload1.SaveAs(Server.MapPath(pathFile));
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Upload File Succesefully ')", true);
            }
            catch (Exception)
            {

                throw;
            }

        }

    }
}