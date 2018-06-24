<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SE_Project_HealthCare_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />

</head>
<body>
    <h4 style="border:double;border-width:medium;">Enter your login Information</h4>
    <form id="loginform" runat="server">
    <div style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"">
        <asp:Login ID="login" runat="server" OnAuthenticate="loginName_Authenticate" BorderStyle="Double" BorderWidth="2"></asp:Login>
    </div>
        <br />
       <p> Click here to Register for a new account:</p>
       <asp:Button Text="Register" ID="register" runat="server" OnClick="register_Click" />
    </form>
</body>
</html>
