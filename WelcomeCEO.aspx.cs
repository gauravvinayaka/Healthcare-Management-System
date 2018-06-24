using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class WelcomeCEO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void patientRecords_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/ViewPatientRecord.aspx");
        }

        protected void doctorrecord_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/ViewDoctorRecords.aspx");
        }

        protected void staffrecords_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/ ViewAllStaffData.aspx");
        }
    }
}