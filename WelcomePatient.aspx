<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePatient.aspx.cs" Inherits="SE_Project_HealthCare_System.WelcomePatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />

</head>
<body>
    <h1 style="text-align:center;border:groove;border-width:thick;">Welcome !!</h1>
    <form id="form1" runat="server">
        <div>
            <div style="text-align:right" id="schedule">
                <asp:Button runat="server" Text="Schedule Appointment" BorderStyle="Double" BackColor="WhiteSmoke" Width="200" ID="scheduleaptbutton" OnClick="scheduleaptbutton_Click" BorderColor="Black" Font-Bold="true" Font-Italic="true" ForeColor="Black" /><br /><br />
                <asp:Button runat="server" Text="View my Records" BorderStyle="Double" BackColor="WhiteSmoke" Width="200" ID="viewrecords" OnClick="viewrecords_Click" BorderColor="Black" Font-Bold="true" Font-Italic="true" ForeColor="Black" />
                <br />
                <br /> 
                <asp:Button runat="server" Text="View my Bills" ID="mybill" BorderStyle="Double" BackColor="WhiteSmoke" Width="200"  OnClick="mybill_Click"  BorderColor="Black" Font-Bold="true" Font-Italic="true" ForeColor="Black" /><br />
                <asp:TextBox runat="server" PlaceHolder="Enter to name to Generate the Bill" ID="bill" style="margin-left: 0px" ></asp:TextBox>
                <br />
                 <br />
                 <asp:Button runat="server" Text="Appointment Details" BorderStyle="Double" BackColor="WhiteSmoke" Width="200" ID="appointmentdetails" OnClick="appointmentdetails_Click" BorderColor="Black" Font-Bold="true" Font-Italic="true" ForeColor="Black" /><br />
                <asp:TextBox runat="server" ID="nameverification" PlaceHolder="Enter Name for Verification"></asp:TextBox>

               <asp:GridView runat="server" Visible="False" AutoGenerateColumns="false" ID="appointmentGrid" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="appointmentGrid_RowCancelingEdit" OnRowDeleting="appointmentGrid_RowDeleting" OnRowEditing="appointmentGrid_RowEditing" OnRowUpdating="appointmentGrid_RowUpdating" OnPageIndexChanging="appointmentGrid_PageIndexChanging" >
                   <Columns>
                       <asp:BoundField DataField="patientName" HeaderText=" Name of the Patient" />
                       <asp:BoundField DataField="patientAge" HeaderText="Patient Age" />
                       <asp:BoundField DataField="date" HeaderText="Date" />
                       <asp:BoundField DataField="availableTimings" HeaderText="TIme of the Appointment" />
                       <asp:BoundField DataField="address" HeaderText="Patient Address" />
                       <asp:BoundField DataField="availableDoctors" HeaderText="Doctor Assigned" />
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

                <asp:GridView runat="server" ID="billGrid" CellPadding="4" ForeColor="#333333" GridLines="Both" AutoGenerateColumns="false"  >
                    <Columns>
                        <asp:BoundField DataField="patientName" HeaderText="Patient Name" />
                        <asp:BoundField DataField="paymentAmount" HeaderText="Bill Amount" />
                        <asp:BoundField DataField="date" HeaderText="Bill Generation date" />
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
            </div>
            <h3>Tips and Tricks for a Healthy Life</h3>
            <br />

            <p>
                How healthy are you? Do you have a healthy diet? Do you exercise regularly? Do you drink at least 8 glasses of water a day? Do you get enough sleep every day?
Our body is our temple, and we need to take care of it to have a healthy life. Do you know that a shocking over 65% of Americans are either obese or overweight? That’s insane! Think of your body as your physical shell to take you through life. If you repeatedly abuse it with unhealthy food, your shell will wear out quickly. While you may look okay on the outside, on the inside, your arteries are getting clogged up with cholesterol and arterial plaque. That’s not a pretty sight!
Advertisement
Life is beautiful and you don’t want to bog yourself down with unnecessary health problems. Today, your vital organs (kidney, heart, lungs, gall bladder, liver, stomach, intestines, etc) may be working well, but they may not be tomorrow. Don’t take your good health today for granted. Take proper care of your body.
Good health isn’t just about healthy eating and exercise – it also includes having a positive mental health, healthy self-image and a healthy lifestyle. In this article, I’ll share with you 45 tips to live a healthier life. Bookmark this article and save the tips, because they are going to be vital in living a healthier life.
            </p>
            <br />
            <br />
            <p><a href="https://personalexcellence.co/blog/healthy-living/">Click on the link to read more</a></p>
        </div>
        <asp:Button runat="server" ID="home" Text="Return Home" OnClick="home_Click" />
    </form>
</body>
</html>
