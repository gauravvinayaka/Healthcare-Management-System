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
    public partial class WelcomePatient : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void scheduleaptbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ScheduleAppointment.aspx");
        }

        protected void viewrecords_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewOnePatientRecord.aspx");
        }

        protected void appointmentdetails_Click(object sender, EventArgs e)
        {
            appointmentGrid.Visible = true;

            nameverification.Visible = true;

            string textboxvalue = nameverification.Text.ToString();

            string query = "select appointmentID,patientName,patientAge,date,availableTimings,address,availableDoctors from scheduleAppointment  WHERE patientName LIKE '" + textboxvalue + "%' order by patientName";

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataSet ds1 = new DataSet();

            adp.Fill(ds1, "Text");

            appointmentGrid.DataSource = ds1;

            appointmentGrid.DataBind();
        }

        protected void appointmentGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void appointmentGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void appointmentGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void appointmentGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void appointmentGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void mybill_Click(object sender, EventArgs e)
        {

            string textboxvalue = bill.Text.ToString();

            string query = "select patientName,paymentAmount,date from paymentInfo  WHERE patientName LIKE '" + textboxvalue + "%' order by patientName";

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataSet ds1 = new DataSet();

            adp.Fill(ds1, "Text");

            billGrid.DataSource = ds1;

            billGrid.DataBind();
        }
    }
}