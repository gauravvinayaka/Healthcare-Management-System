using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_HealthCare_System
{
    public partial class AfterLogin : System.Web.UI.Page
    {
        string staff, ceo, doctor;

        

        protected void confirmcode_Click(object sender, EventArgs e)
        {
            staff = staffcode.Text;
            ceo = ceocode.Text;
            doctor = doctorcode.Text;
            if(staff=="1")
            {
                Response.Redirect("WelcomeStaff.aspx");
            }
            else if(doctor=="2")
            {
                Response.Redirect("WelcomeDoctor.aspx");

            }
            else if(ceo=="3")
            {
                Response.Redirect("WelcomeCEO.aspx");
            }
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void profession_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (profession.SelectedValue == "Staff")
            {

                staffcode.Visible = true;
                confirmcode.Visible = true;
                confirmcode_Click(this, new EventArgs());
                
            }
            else if(profession.SelectedValue=="Doctor")
            {
                doctorcode.Visible = true;
                confirmcode.Visible = true;
                confirmcode_Click(this, new EventArgs());
            }
            else if(profession.SelectedValue=="CEO")
            {
                ceocode.Visible = true;
                confirmcode.Visible = true;
                confirmcode_Click(this, new EventArgs());
            }
            else if(profession.SelectedValue=="Patient")
            {
                Response.Redirect("WelcomePatient.aspx");
            }
        }

       
    }
}