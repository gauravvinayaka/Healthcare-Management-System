<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomeDoctor.aspx.cs" Inherits="SE_Project_HealthCare_System.WelcomeDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
</head>
<body>
    <h1 style="text-align:center;border:groove;border-width:thick;">Welcome Doctor</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Button runat="server" ID="ViewPatientRecordsButton" Text="Vew All Patient Records" BorderColor="Black" BorderWidth="2" OnClick="ViewPatientRecordsButton_Click" /><br /><br />

            <asp:Button runat="server" ID="viewoneDoctorRecords" Text="Veiw my Records"  BorderColor="Black" BorderWidth="2" OnClick="viewoneDoctorRecords_Click" />
            <asp:Button runat="server" ID="home" Text="Return Home" OnClick="home_Click" EnableTheming="true" />
            <p>A medical doctor (also called a physician) is a person who practices medicine to treat illness and injuries.

Medical doctors go to medical school to be trained. They usually hold a college degree in medicine. Medical doctors used to make house calls to treat patients at home. Now they usually see patients in their offices or in hospitals. Medical doctors may also work for schools, companies, sports teams, or the military. Medical doctors are often assisted by nurses or other staff.

Medical doctors treat patients by diagnosing them, or figuring out what is wrong. When medical doctors diagnose a patient, they begin by asking questions about the patient's symptoms. Symptoms might include fever or pain. They may ask other questions about things like past illnesses or family members who have been sick. They will then examine the patient. That can include looking at different parts of the body and listening to the heart and lungs with a stethoscope. Sometimes they may need to collect blood, use an x-ray machine, or use other tools to look for things they cannot see when examining the patient. Usually, when they have gathered enough information, a doctor can make a diagnosis and then prescribe a treatment. Often they prescribe drugs.</p>
        </div>
    </form>
</body>
</html>
