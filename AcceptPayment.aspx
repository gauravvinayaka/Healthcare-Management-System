<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcceptPayment.aspx.cs" Inherits="SE_Project_HealthCare_System.AcceptPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
</head>
<body>
    <h1 style="text-align:center;border:groove;border-width:thick;background-color:burlywood">Pay Invoice</h1>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <th>
                   Payment Details
                </th>

                <th>
                    Values
                </th>
            </tr>
            <tr>
                <td>
                    Patient Name
                </td>
                <td>
                    <asp:TextBox runat="server" ID="patientName" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Patient Amount
                </td>
                <td>
                    <asp:TextBox runat="server" ID="PatientAmount"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                   Date
                </td>
                <td>
                    <asp:TextBox runat="server" TextMode="Date" ID="paymentdate"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
        <p>
    <asp:ImageButton runat="server" ID="Billdetails" ImageUrl="~/bill.png" Width="138px" Height="76px" OnClick="Billdetails_Click" /> 
        </p>
        <asp:button id="backButton" runat="server" text="Back" 
OnClientClick="JavaScript:window.history.back(1);return false;"></asp:button>
    </form>
</body>
</html>
