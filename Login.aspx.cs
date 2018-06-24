using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class Login : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void loginName_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool authenticated = this.ValidateCredentials(login.UserName, login.Password);

            if(authenticated)
            {
               // e.Authenticated = true;
                FormsAuthentication.RedirectFromLoginPage(login.UserName, login.RememberMeSet);
            }
        }
        public bool IsAlphaNumeric(string text)
        {
            return Regex.IsMatch(text, "^[a-zA-Z0-9]+$");
        }

        private bool ValidateCredentials(string userName, string password)
        {
            bool returnValue = false;

            if(this.IsAlphaNumeric(userName))
            {
                SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");

                con.Open();
                string query = "select count(*) from LoginData where UserName=@UserName and Password=@Password";

                SqlCommand cmd = new SqlCommand(query, con);

                SqlParameter user = new SqlParameter();

                user.ParameterName = "@UserName";
                user.Value = userName.Trim();
                cmd.Parameters.Add(user);

                SqlParameter pass = new SqlParameter();
                pass.ParameterName = "@Password";
                pass.Value = HashLibrary.Hasher.HashString(password.Trim());

               // Console.WriteLine(pass);
                cmd.Parameters.Add(pass);

                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                    returnValue = true;
            }
            else
            {
                return true;
            }

            return returnValue;
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}