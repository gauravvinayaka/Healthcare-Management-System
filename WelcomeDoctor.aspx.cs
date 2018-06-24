using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class WelcomeDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void ViewPatientRecordsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewPatientRecord.aspx");
        }

        protected void viewoneDoctorRecords_Click(object sender, EventArgs e)
        {

        }
    }
}