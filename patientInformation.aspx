<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientInformation.aspx.cs" Inherits="SE_Project_HealthCare_System.patientInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link rel="stylesheet" href="Content/Site.css" type="text/css" />
</head>
<body>
    <h1 style="text-align: center; border: groove; border-width: thick; background-color: burlywood">Create Patient record</h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <th>Patient Information</th>
                    <th>Values</th>
                </tr>
                <tr>
                    <td>Patient Name</td>
                    <td>
                        <asp:TextBox runat="server" ID="patientNamepatient"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Number" ID="patientAgepatient"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Patient Weight in lbs</td>
                    <td>
                        <asp:TextBox runat="server" ID="patientWeight" TextMode="Number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Patient Height in cms
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="patientHeight" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Patient Blood Pressure
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="patientBloodPressure"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Date
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="patientsheduleDatepatient" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Social Security Number
                    </td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Number" ID="patientSSN"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Insuarance Name
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="patientInsuranceName"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Address
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="patientAddresspatient" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <p>Cleck Here to create a patient Record</p>
            <asp:Button runat="server" ID="Addpatient" Text="Create Patient Record" OnClick="Addpatient_Click" />

        </div>
        <asp:Button ID="backButton" runat="server" Text="Back"
            OnClientClick="JavaScript:window.history.back(1);return false;"></asp:Button>
    </form>
</body>
</html>
