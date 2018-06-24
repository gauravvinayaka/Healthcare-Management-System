<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomeStaff.aspx.cs" Inherits="SE_Project_HealthCare_System.Welcome_Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
</head>
<body>
    <h1 style="text-align:center;border:groove;border-width:thick;background-image:radial-gradient(health.png)">Welcome to the Staff Page</h1>

    <form id="form1" runat="server">
        <div id="acd" style="text-align: right">
            <asp:Button Text="Update Doctor Report" runat="server" ID="updatedoctorreport" OnClick="updatedoctorreport_Click" BorderColor="WindowText" BorderWidth="2" ForeColor="Black" BorderStyle="Double" />
            <br />
            <asp:Button Text="View Patient Record" runat="server" ID="viewpatientrecord" OnClick="viewpatientrecord_Click" BorderWidth="2" BorderColor="WindowText" ForeColor="Black" BorderStyle="Double" />
            <br />
            <asp:Button Text="Enter New Staff Data" runat="server" ID="Staffdata" OnClick="Staffdata_Click" BorderWidth="2" BorderColor="WindowText" ForeColor="Black" BorderStyle="Double" Style="margin-left: 0px" />
            <br />
            <asp:Button Text="Update Patient Record" runat="server" ID="updatepatientrecord" OnClick="updatepatientrecord_Click" BorderColor="WindowText" BorderWidth="2" ForeColor="Black" BorderStyle="Double" />
            <br />
            <br />
            <br />
        </div>
        <div>
            <p>
                A staff of office is a staff, the carrying of which often denotes an official's position, a social rank or a degree of social prestige.

Apart from the ecclesiastical and ceremonial usages mentioned below, there are less formal usages. A gold- or silver-topped cane can express social standing (or dandyism). Teachers or prefects in schools traditionally carried less elaborate canes which marked their right (and potential threat) to administer canings, and military officers carry a residual threat of physical punishment in their swagger sticks. Orchestral conductors have in their batons symbols of authority as well as tools of their trade.
            </p>
        </div>

        <p>
            <asp:Label ID="PaymentbyCash" runat="server" Text="Please Enter the Payment Details"></asp:Label>
            <asp:ImageButton runat="server" ID="accept" ImageUrl="~/acceptpayment.jpg" Width="98px" Height="125px" OnClick="accept_Click" Style="margin-bottom: 0px" />
        </p>

        <asp:Button ID="backButton" runat="server" Text="Back"
            OnClientClick="JavaScript:window.history.back(1);return false;"></asp:Button>
    </form>
</body>
</html>
