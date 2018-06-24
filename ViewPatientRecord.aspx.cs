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
    public partial class ViewPatientRecord : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VINAY\SQLEXPRESS;Initial Catalog=HealthCare;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            if (!IsPostBack)
            {
                patientGrid.DataBind();
            }
        }

        protected void confirmname_Click(object sender, EventArgs e)
        {
            recordslabel.Visible = true;
           
            confirmname.Visible = true;

            string query = "select patientID,patientName,patientAge,date,SSN,insurancename,address,patientWeight,patientHeight,patientBloodPressure from patientInformation ";

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataSet ds1 = new DataSet();

            adp.Fill(ds1, "Text");

            patientGrid.DataSource = ds1;

            patientGrid.DataBind();

        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePatient.aspx");
        }

        protected void patientGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            patientGrid.PageIndex = e.NewPageIndex;
            patientGrid.DataBind();
            bind1();
        }

        protected void patientGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            patientGrid.EditIndex = -1;
            patientGrid.DataBind();
            bind1();
        }

        private void bind1()
        {
            string query = "select patientID,patientName,patientAge,date,SSN,insurancename,address,patientWeight,patientHeight,patientBloodPressure from patientInformation ";

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataSet ds1 = new DataSet();

            adp.Fill(ds1, "Text");

            patientGrid.DataSource = ds1;

            patientGrid.DataBind();
        }

        protected void patientGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)patientGrid.Rows[e.RowIndex];

            SqlCommand cmd = new SqlCommand("delete FROM patientInformation where patientID='" + Convert.ToInt32(patientGrid.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            patientGrid.EditIndex = -1;
            patientGrid.DataBind();
            bind1();
        }

        protected void patientGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int user = Convert.ToInt32(patientGrid.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)patientGrid.Rows[e.RowIndex];

            TextBox name = (TextBox)row.Cells[0].Controls[0];

            TextBox age = (TextBox)row.Cells[1].Controls[0];
            TextBox date = (TextBox)row.Cells[2].Controls[0];
            TextBox SSN = (TextBox)row.Cells[3].Controls[0];
            TextBox inscmp = (TextBox)row.Cells[4].Controls[0];
            TextBox address = (TextBox)row.Cells[5].Controls[0];
            TextBox pweight = (TextBox)row.Cells[6].Controls[0];
            TextBox pheight = (TextBox)row.Cells[7].Controls[0];
            TextBox pbp = (TextBox)row.Cells[8].Controls[0];

            patientGrid.EditIndex = -1;
            SqlCommand cmd = new SqlCommand("update patientInformation set patientName='" + name.Text + "',patientAge='" + age.Text + "',date='" + date.Text + "',SSN='" + SSN.Text + "',insurancename='" + inscmp.Text + "',address='" + address.Text + "',patientWeight='" + pweight.Text + "',patientHeight='" + pheight.Text + "',patientBloodPressure='" + pbp.Text + "' where patientID = '" + user + "'", con);
            cmd.ExecuteNonQuery();
            patientGrid.DataBind();
            bind1();
        }

        protected void patientGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            patientGrid.EditIndex = e.NewEditIndex;
            patientGrid.DataBind();
            bind1();

        }
    }
}