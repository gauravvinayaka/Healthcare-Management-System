<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAllStaffData.aspx.cs" Inherits="SE_Project_HealthCare_System.ViewAllStaffData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2 style="text-align:center;border:groove;border-width:thick;background-color:burlywood">All Paitent Information </h2>
        <asp:GridView ID="staffgrid" runat="server" AutoGenerateColumns="false"  CellPadding="4" ForeColor="#333333" GridLines="None" >
            <Columns>
                <asp:BoundField DataField="staffName" HeaderText="Staff Name" />
                <asp:BoundField DataField="staffDesignation" HeaderText="Staff Designation" />
                <asp:BoundField DataField="staffAddress" HeaderText="Staff Address" />
                <asp:BoundField DataField="staffPhoneNumber" HeaderText="Phone Number" />
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
        <asp:Button runat="server" ID="viewrecords" Text="View Records" OnClick="viewrecords_Click" />
    
    </div>
        <asp:button id="backButton" runat="server" text="Back" 
OnClientClick="JavaScript:window.history.back(1);return false;"></asp:button>
    </form>
</body>
</html>
