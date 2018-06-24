<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScheduleAppointment.aspx.cs" Inherits="SE_Project_HealthCare_System.ScheduleAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />

</head>
<body>
    <h1 style="text-align: center; border: groove; border-width: thick; background-color: burlywood">Schedule Appointment </h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <th>Patient Demographics</th>
                    <th>Values</th>
                </tr>
                <tr>
                    <td>Patient Name</td>
                    <td>
                        <asp:TextBox runat="server" ID="patientName"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Number" ID="patientAge"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Date
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="patientsheduleDate" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Available Doctors
                    </td>
                    <td>
                        <asp:DropDownList ID="availabledoctors" runat="server" Width="200">
                            <asp:ListItem>Select</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Dotors Available Time</td>
                    <td>
                        <asp:DropDownList runat="server" ID="dropdowntimings" Width="200">
                            <asp:ListItem>Select</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Address
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="patientAddress" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <p>Cleck Here to Schedule the appointment</p>

            <asp:ImageButton runat="server" ID="appointmentschedule" OnClick="appointmentschedule_Click" ImageUrl="~/scheduleAppointment.jpg" Width="157px" />
        </div>
        <asp:Button ID="backButton" runat="server" Text="Back"
            OnClientClick="JavaScript:window.history.back(1);return false;"></asp:Button>
    </form>

</body>
</html>
