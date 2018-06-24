using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class DoctorInfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

        }

        protected void docotRecord_Click(object sender, EventArgs e)
        {
            string insertquery = "insert into doctorsInformation (doctorName,doctorAge,noOfPatientsAttended,doctorPhoneNumber) values (@doctorName,@doctorAge,@noOfPatientsAttended,@doctorPhoneNumber)";
            SqlCommand cmd = new SqlCommand(insertquery, con);


            cmd.Parameters.AddWithValue("@doctorName", doctorName.Text.ToString());
            cmd.Parameters.AddWithValue("@doctorAge", doctorAge.Text.ToString());
            cmd.Parameters.AddWithValue("@noOfPatientsAttended", patientsAttended.Text.ToString());
            cmd.Parameters.AddWithValue("@doctorPhoneNumber", doctorPhoneNumber.Text.ToString());

            string insertquer1 = " insert into timings (availabeDoctors) values (@availabeDoctors)";
            SqlCommand cmd1 = new SqlCommand(insertquer1, con);
            cmd1.Parameters.AddWithValue("@availabeDoctors", doctorName.Text.ToString());
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();

        }
    }
}