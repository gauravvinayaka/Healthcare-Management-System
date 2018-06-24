using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class AcceptPayment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Billdetails_Click(object sender, ImageClickEventArgs e)
        {
            string schedulequery = "insert into paymentInfo (patientName,paymentAmount,date) values (@patientName,@paymentAmount,@date)";
            SqlCommand cmd = new SqlCommand(schedulequery, con);

            cmd.Parameters.AddWithValue("@patientName", patientName.Text.ToString());
            cmd.Parameters.AddWithValue("@paymentAmount", PatientAmount.Text.ToString());
            cmd.Parameters.AddWithValue("@date", paymentdate.Text.ToString());
           

            cmd.ExecuteNonQuery();
        }

    }
}