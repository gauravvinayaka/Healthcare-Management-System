<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AfterLogin.aspx.cs" Inherits="SE_Project_HealthCare_System.AfterLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
</head>
<body>
    <h1 style="text-align:center;border:groove;border-width:thick;background-color:burlywood">Login Success!!</h1>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label>
         <asp:LoginName ID="LoginName" runat="server" />
        (<asp:LoginStatus ID="LoginStatus" runat="server"/>)
        
        <h3>Please select</h3>
        <h4>I am a </h4>
        <asp:DropDownList ID="profession" runat="server" AutoPostBack="true" OnSelectedIndexChanged="profession_SelectedIndexChanged">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Doctor</asp:ListItem>
            <asp:ListItem>Staff</asp:ListItem>
            <asp:ListItem>Patient</asp:ListItem>
            <asp:ListItem>CEO</asp:ListItem>
        </asp:DropDownList>
        <p id="code">Enter the code:</p>
        <asp:TextBox runat="server" ID="staffcode" Visible="false"></asp:TextBox>
        <asp:TextBox runat="server" ID="doctorcode" Visible="false"></asp:TextBox>
        <asp:TextBox runat="server" ID="ceocode" Visible="false"></asp:TextBox>
        <asp:Button runat="server" ID="confirmcode" Visible="false" Text="Confirm" OnClick="confirmcode_Click" />

    
    </div>
    </form>
</body>
</html>
