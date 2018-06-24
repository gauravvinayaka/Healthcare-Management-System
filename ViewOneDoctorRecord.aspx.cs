using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class ViewOneDoctorRecord : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }


        protected void viewrecords_Click(object sender, ImageClickEventArgs e)
        {
            records.Visible = true;
            nameVerification.Visible = true;

            string textboxvalue = nameVerification.Text.ToString();

            string query = "select doctorID,doctorName,doctorAge,noOfPatientsAttended,doctorPhoneNumber from doctorsInformation WHERE doctorName LIKE '" + textboxvalue + "%' order by doctorName";

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataSet ds1 = new DataSet();

            adp.Fill(ds1, "Text");

            doctorRecord.DataSource = ds1;

            doctorRecord.DataBind();
        }
    }
}