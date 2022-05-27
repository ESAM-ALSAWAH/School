using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

using System.Web.UI;

namespace WebApplication4.pages
{
    public partial class Register : System.Web.UI.Page
    {

        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MyHomeWork.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] != null )
            {
                Response.Redirect("Home.aspx");
            }
            
            // initial Drop Down
            List<string> months = new List<string>() { "January", "Feburary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
            List<int> Day = new List<int>();
            List<int> Year = new List<int>();
            for (int i = 1; i <= 31; i++)
            {
                Day.Add(i);
            }
            for (int i = 2000; i <= 2022; i++)
            {
                Year.Add(i);
            }
            DropDay.DataSource = Day;
            DropYear.DataSource = Year;
            DropMonth.DataSource = months;
            DropMonth.DataBind();
            DropDay.DataBind();
            DropYear.DataBind();

        }



        protected void RegisterButton(object sender, EventArgs e)
        {

            try
            {
                string ins = "Insert into [users] (Name,Password,Email,Gender,Phone,Country,City,Addres,FatherName,MotherName,Admin,Language,SpeackLanguage,LearnLanguage,LevelLanguage) values('" + Name.Text + "','" + Password.Text + "','" + Email.Text + "','" + DropGender.SelectedValue + "','" + phone.Text + "','" + country.Text + "','" + city.Text + "','" + addres.Text + "','" + FatherName.Text + "','" + MotherName.Text + "','" + DropDownAdmin.SelectedValue + "','" + DropLanguage.SelectedValue + "','" + DropCanSpeak.SelectedValue + "','" + DropStudied.SelectedValue + "','" + DropLevel.SelectedValue + "')";
                SqlConnection con = new SqlConnection(connectionString);
                if (checkemail(con))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Email Already Token ')", true);
                }
                else
                {

                    SqlCommand com = new SqlCommand(ins, con);
                    con.Open();
                    com.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Login.aspx");

                }
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);
            }

        }

        //Cheak if The Email Found In DataBase
        private Boolean checkemail(SqlConnection con)
        {
            Boolean emailavailable = false;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Users where Email='" + Email.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                emailavailable = true;
            }
            return emailavailable;
        }
    }
}