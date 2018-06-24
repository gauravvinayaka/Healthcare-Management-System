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
    public partial class ViewDoctorRecords : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void viewDotorInfo_Click(object sender, EventArgs e)
        {
            string query = "select doctorID,doctorName,doctorAge,noOfPatientsAttended,doctorPhoneNumber from doctorsInformation";

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataSet ds1 = new DataSet();

            adp.Fill(ds1, "Text");

            doctorRecord.DataSource = ds1;

            doctorRecord.DataBind();
        }

        protected void doctorRecord_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            doctorRecord.PageIndex = e.NewPageIndex;
            doctorRecord.DataBind();
            bind1();
        }

        private void bind1()
        {
            string query = "select doctorID,doctorName,doctorAge,noOfPatientsAttended,doctorPhoneNumber from doctorsInformation";

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataSet ds1 = new DataSet();

            adp.Fill(ds1, "Text");

            doctorRecord.DataSource = ds1;

            doctorRecord.DataBind();
        }

        protected void doctorRecord_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            doctorRecord.EditIndex = -1;
            doctorRecord.DataBind();
            bind1();
        }

        protected void doctorRecord_RowEditing(object sender, GridViewEditEventArgs e)
        {
            doctorRecord.EditIndex = e.NewEditIndex;
            doctorRecord.DataBind();
            bind1();
        }

        protected void doctorRecord_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int user = Convert.ToInt32(doctorRecord.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)doctorRecord.Rows[e.RowIndex];

            TextBox name = (TextBox)row.Cells[0].Controls[0];

            TextBox age = (TextBox)row.Cells[1].Controls[0];
            TextBox noOfPatientsAttended = (TextBox)row.Cells[2].Controls[0];
            TextBox doctorPhoneNumber = (TextBox)row.Cells[3].Controls[0];


            doctorRecord.EditIndex = -1;
            SqlCommand cmd = new SqlCommand("update doctorsInformation set doctorName='" + name.Text + "',doctorAge='" + age.Text + "',noOfPatientsAttended='" + noOfPatientsAttended.Text + "',doctorPhoneNumber='" + doctorPhoneNumber.Text + "'", con);
            cmd.ExecuteNonQuery();
        }

        protected void doctorRecord_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)doctorRecord.Rows[e.RowIndex];

            SqlCommand cmd = new SqlCommand("delete FROM doctorsInformation where doctorID='" + Convert.ToInt32(doctorRecord.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            doctorRecord.EditIndex = -1;
            doctorRecord.DataBind();
            bind1();
        }
    }
}