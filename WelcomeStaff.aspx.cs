using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class Welcome_Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void updatepatientrecord_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientInformation.aspx");
        }

        protected void viewpatientrecord_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewPatientRecord.aspx");
        }

        protected void updatedoctorreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DoctorInfo.aspx");
        }

        protected void accept_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/AcceptPayment.aspx");
        }

        protected void Staffdata_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewStaffRecord.aspx");
        }
    }
}