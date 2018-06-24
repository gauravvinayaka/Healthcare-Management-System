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
    public partial class ViewOnePatientRecord : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void back_Click(object sender, EventArgs e)
        {

        }

        protected void confirmname_Click(object sender, EventArgs e)
        {
          
        }

        protected void patientrecord_Click(object sender, ImageClickEventArgs e)
        {
            recordslabel.Visible = true;


            nameverification.Visible = true;

            string textboxvalue = nameverification.Text.ToString();

            string query = "select patientName,patientAge,date,SSN,insurancename,address,patientWeight,patientHeight,patientBloodPressure from patientInformation WHERE patientName LIKE '" + textboxvalue + "%' order by patientName";

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataSet ds1 = new DataSet();

            adp.Fill(ds1, "Text");

            patientGrid.DataSource = ds1;

            patientGrid.DataBind();
        }
    }
}