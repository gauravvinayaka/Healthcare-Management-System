<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPatientRecord.aspx.cs" Inherits="SE_Project_HealthCare_System.ViewPatientRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="sidebar" href="Content/bootstrap.css" type="text/css" />
</head>
<body>
    <h4 style="text-align: center; border: groove; border-width: thick; background-color: burlywood">Patient Records</h4>

    <h4>Please Enter your name for Verification </h4>
    <form id="form1" runat="server">
        <div>

            <asp:Button runat="server" Text="Search" ID="confirmname" OnClick="confirmname_Click" /><br />
            <asp:Label runat="server" Text="Records" Visible="false" ID="recordslabel"></asp:Label>


        </div>
        <asp:GridView runat="server" ID="patientGrid" DataKeyNames="patientID" OnPageIndexChanging="patientGrid_PageIndexChanging" OnRowEditing="patientGrid_RowEditing" OnRowCancelingEdit="patientGrid_RowCancelingEdit" OnRowDeleting="patientGrid_RowDeleting" OnRowUpdating="patientGrid_RowUpdating" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Both" Width="866px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />


            <Columns>
                <asp:BoundField DataField="patientName" HeaderText="Patient Name" />
                <asp:BoundField DataField="patientAge" HeaderText="Patient Age" />
                <asp:BoundField DataField="date" HeaderText="Date" />
                <asp:BoundField DataField="SSN" HeaderText="Social Security Number" />
                <asp:BoundField DataField="insurancename" HeaderText="Insurance Company" />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="patientWeight" HeaderText="Patient Weight" />
                <asp:BoundField DataField="patientHeight" HeaderText="Patient Height" />
                <asp:BoundField DataField="patientBloodPressure" HeaderText="Patient Blood Presuure" />
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />


            </Columns>
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
        <br />
        <div style="fit-position: bottom">
            <asp:Button BorderStyle="Solid" runat="server" ID="back" Text="Back" BackColor="WindowFrame" OnClick="back_Click" ForeColor="Window" />
        </div>
<asp:button id="backButton" runat="server" text="Back" 
OnClientClick="JavaScript:window.history.back(1);return false;"></asp:button>
    </form>



</body>
</html>
