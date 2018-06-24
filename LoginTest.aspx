<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginTest.aspx.cs" Inherits="SE_Project_HealthCare_System.LoginTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
        <form id="form1" runat="server">
            <asp:Login ID="Login1" runat="server" OnAuthenticate="ValidateUser"></asp:Login>
        </form>
    </div>
</body>
</html>
