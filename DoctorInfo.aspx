<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorInfo.aspx.cs" Inherits="SE_Project_HealthCare_System.DoctorInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
    <title></title>
</head>
<body>
    <h1 style="text-align:center;border:groove;border-width:thick;background-color:burlywood"> Create Doctor Record</h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <th>Doctor Information
                    </th>
                    <th>Values
                    </th>
                </tr>
                <tr>
                    <td>Doctor Name
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="doctorName" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Age 
                    </td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Number" ID="doctorAge"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Number of Patients attended 
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="patientsAttended" TextMode="Number"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        Phone Number:
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="doctorPhoneNumber"></asp:TextBox>
                    </td>
                </tr>

            </table>
            <p>Click here to create Doctor Record</p> 
            <asp:Button runat="server" ID="docotRecord" Text="Create Record" OnClick="docotRecord_Click" />
        </div>
        <asp:button id="backButton" runat="server" text="Back" 
OnClientClick="JavaScript:window.history.back(1);return false;"></asp:button>
    </form>
</body>
</html>
