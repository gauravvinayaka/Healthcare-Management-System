using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class ScheduleAppointment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           // string config = ConfigurationManager.ConnectionStrings["timingsdropdown"].ToString();

           

            con.Open();

            SqlCommand cmd = new SqlCommand("Select * from timings ",con);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            adp.Fill(ds);

            dropdowntimings.DataTextField = ds.Tables[0].Columns["availableTimings"].ToString();

            availabledoctors.DataTextField = ds.Tables[0].Columns["availabeDoctors"].ToString();

            dropdowntimings.DataSource = ds.Tables[0];

            availabledoctors.DataSource = ds.Tables[0];

            dropdowntimings.DataBind();

            availabledoctors.DataBind();
        }


        protected void appointmentschedule_Click(object sender, ImageClickEventArgs e)
        {
            string schedulequery = "insert into scheduleAppointment (patientName,patientAge,date,availableTimings,address) values (@patientName,@patientAge,@date,@availableTimings,@address)";
            SqlCommand cmd = new SqlCommand(schedulequery, con);

            cmd.Parameters.AddWithValue("@patientName", patientName.Text.ToString());
            cmd.Parameters.AddWithValue("@patientAge", patientAge.Text.ToString());
            cmd.Parameters.AddWithValue("@date", patientsheduleDate.Text.ToString());
            cmd.Parameters.AddWithValue("@availableTimings", dropdowntimings.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@address", patientAddress.Text.ToString());

            cmd.ExecuteNonQuery();
        }
    }
}