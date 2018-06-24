using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class patientInformation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Addpatient_Click(object sender, EventArgs e)
        {
            string schedulequery = "insert into patientInformation (patientName,patientAge,patientWeight,patientHeight,patientBloodPressure,date,SSN,insurancename,address) values (@patientName,@patientAge,@patientWeight,@patientHeight,@patientBloodPressure,@date,@SSN,@insurancename,@address)";
            SqlCommand cmd = new SqlCommand(schedulequery, con);

            cmd.Parameters.AddWithValue("@patientName", patientNamepatient.Text.ToString());
            cmd.Parameters.AddWithValue("@patientAge", patientAgepatient.Text.ToString());
            cmd.Parameters.AddWithValue("@patientWeight", patientWeight.Text.ToString());
            cmd.Parameters.AddWithValue("@patientHeight", patientHeight.Text.ToString());
            cmd.Parameters.AddWithValue("@patientBloodPressure", patientBloodPressure.Text.ToString());
            cmd.Parameters.AddWithValue("@date", patientsheduleDatepatient.Text.ToString());
            cmd.Parameters.AddWithValue("@SSN", patientSSN.Text.ToString());
            cmd.Parameters.AddWithValue("@insurancename", patientInsuranceName.Text.ToString());
            cmd.Parameters.AddWithValue("@address",           patientAddresspatient.Text.ToString());

            cmd.ExecuteNonQuery();
        }
    }
}