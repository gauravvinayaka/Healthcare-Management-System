using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class ViewStaffRecord : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void addstaffrecords_Click(object sender, EventArgs e)
        {
            string schedulequery = "insert into StaffInformation (staffName,staffDesignation,staffAddress,staffPhoneNumber) values (@staffName,@staffDesignation,@staffAddress,@staffPhoneNumber)";
            SqlCommand cmd = new SqlCommand(schedulequery, con);

            cmd.Parameters.AddWithValue("@staffName", staffName.Text.ToString());
            cmd.Parameters.AddWithValue("@staffDesignation", staffDesignation.Text.ToString());
            cmd.Parameters.AddWithValue("@staffAddress", staffaddress.Text.ToString());
            cmd.Parameters.AddWithValue("@staffPhoneNumber", staffPhoneNumber.Text.ToString());

            cmd.ExecuteNonQuery();
        }
    }
}