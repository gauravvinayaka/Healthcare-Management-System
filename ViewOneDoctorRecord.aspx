<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOneDoctorRecord.aspx.cs" Inherits="SE_Project_HealthCare_System.ViewOneDoctorRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />

</head>
<body>
    <h2 style="text-align:center;border:groove;border-width:thick;">View my Records</h2>
    <form id="form1" runat="server">
    <div>
        <asp:GridView runat="server" ID="doctorRecord" CellPadding="4" DataKeyNames="doctorID" AutoGenerateColumns="false" ForeColor="#333333" GridLines="Both"  >
            <Columns>
                <asp:BoundField DataField="doctorName" HeaderText="Doctor Name" />
                <asp:BoundField DataField="doctorAge" HeaderText="Doctor Age" />
                <asp:BoundField DataField="noOfPatientsAttended" HeaderText="Patients Treated" />
                <asp:BoundField DataField="doctorPhoneNumber" HeaderText="Phone Number" />
              
            </Columns>
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        
        
        <br />
        
        <asp:ImageButton runat="server" ID="viewrecords" OnClick="viewrecords_Click" ImageUrl="~/records.png" Height="100px" Width="165px" />
        <br />
        <br />
        
        <asp:Label Font-Size="Medium" ID="view_records" runat="server" Text="Click Here to view the Records"></asp:Label>
        <br />
        <asp:Label Text="Enter Your Name" Visible="false" runat="server" ID="records"></asp:Label>
        <asp:TextBox ID="nameVerification" Visible="false"  PlaceHolder="Enter Name To Verify" runat="server"></asp:TextBox>

    </div>
        <asp:button id="backButton" runat="server" text="Back" 
OnClientClick="JavaScript:window.history.back(1);return false;"></asp:button>
    </form>
</body>
</html>
