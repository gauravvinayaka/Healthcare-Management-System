<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SE_Project_HealthCare_System.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
</head>
<body>
    <h2 style="text-align:center;border:groove;border-width:thick;background-color:burlywood">Register</h2>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <th>
                    Information 
                </th>
                <th>
                    Data
                </th>
            </tr>
            <tr>
                <td>
                    Enter Username :
                </td>
                <td>
                    <asp:TextBox runat="server" ID="username" ></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>
                    Enter Password:
                </td>
                <td>
                    <asp:TextBox runat="server" TextMode="Password" ID="passwordReg"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password:
                </td>
                <td>
                    <asp:TextBox runat="server" TextMode="Password" ID="confirmpassword"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Email ID:
                </td>
                <td>
                    <asp:TextBox runat="server" ID="emailid" ></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>Click to Register</p><br />
        <asp:Button runat="server" ID="registerbutton" Text="Register" OnClick="registerbutton_Click" />
        <asp:Button runat="server" ID="home" Text="Retuen Home" OnClick="home_Click" />
    
    </div>
    </form>
</body>
</html>
