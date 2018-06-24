<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDoctorRecords.aspx.cs" Inherits="SE_Project_HealthCare_System.ViewDoctorRecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />

</head>
<body>
    <h2 style="text-align:center;border:groove;border-width:thick;background-color:burlywood">All Docotors Records</h2>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="doctorRecord" CellPadding="4" DataKeyNames="doctorID" OnPageIndexChanging="doctorRecord_PageIndexChanging" OnRowCancelingEdit="doctorRecord_RowCancelingEdit" OnRowEditing="doctorRecord_RowEditing" OnRowUpdating="doctorRecord_RowUpdating" OnRowDeleting="doctorRecord_RowDeleting"
                 AutoGenerateColumns="false" ForeColor="#333333" GridLines="Both">
                <Columns>
                    <asp:BoundField DataField="doctorName" HeaderText="Doctor Name" />
                    <asp:BoundField DataField="doctorAge" HeaderText="Doctor Age" />
                    <asp:BoundField DataField="noOfPatientsAttended" HeaderText="Patients Treated" />
                    <asp:BoundField DataField="doctorPhoneNumber" HeaderText="Phone Number" />
                    <asp:CommandField ShowEditButton="true" />
                    <asp:CommandField ShowDeleteButton="true" />
                    

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

            <asp:Label Text="Records" runat="server" ID="records"></asp:Label>
            
            <asp:Button runat="server" ID="viewDotorInfo" Text="View Records" OnClick="viewDotorInfo_Click" BorderColor="Window" ForeColor="Black" BorderWidth="2" BorderStyle="Double" />
        </div>
        <asp:button id="backButton" runat="server" text="Back" 
OnClientClick="JavaScript:window.history.back(1);return false;"></asp:button>
    </form>
</body>
</html>
