using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void registerbutton_Click(object sender, EventArgs e)
        {
            string registerquery1 = "insert into Register (UserName,Password,verifyPassword,email) values (@UserName,@Password,@verifyPassword,@email)";
            SqlCommand cmd = new SqlCommand(registerquery1, con);


            string pass = HashLibrary.Hasher.HashString(passwordReg.Text.ToString());
            cmd.Parameters.AddWithValue("@UserName", username.Text.ToString());
            cmd.Parameters.AddWithValue("@Password", pass);
            cmd.Parameters.AddWithValue("@verifyPassword", pass);
            cmd.Parameters.AddWithValue("@email", emailid.Text.ToString());
            cmd.ExecuteNonQuery();


            string registerquery2="insert into LoginData (Username,Password) values (@UserName,@Password)";
            SqlCommand cmd1 = new SqlCommand(registerquery2, con);
            cmd1.Parameters.AddWithValue("@UserName", username.Text.ToString());
            cmd1.Parameters.AddWithValue("@Password", pass);
            cmd1.ExecuteNonQuery();

            Response.Redirect("Login.aspx");


        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}