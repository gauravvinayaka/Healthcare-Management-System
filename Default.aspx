<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SE_Project_HealthCare_System._Default" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center;border:groove;border-width:thick;">Welcome to Health Care Management System</h1>
        <h3 style="text-align:right;">--Vinay Deshpande</h3>
          <h3 style="text-align:right;border-width:thick">--Gaurav Vinayaka</h3>
          <h3 style="text-align:right";>--Anjikya Tiwari </h3>
        <h3>Instructor : Dr Shin </h3>
    <div style="border-style: double; border-color: inherit; border-width: medium;background-color:white ; margin-right: 594px; width: 209px;">
        
        <asp:Label ID="Label1" runat="server" Text="Click login to Enter the System"></asp:Label>
        <br />
        <br />
        <p style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"><asp:HyperLink ID="login" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink><br />
        <asp:HyperLink ID="register" runat="server" NavigateUrl="~/Register.aspx">New Account Register</asp:HyperLink></p>
    </div>
    </form>
</body>
</html>
