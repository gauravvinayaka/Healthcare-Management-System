<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStaffRecord.aspx.cs" Inherits="SE_Project_HealthCare_System.ViewStaffRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
</head>
<body>
    <h1 style="text-align: center; border: groove; border-width: thick; background-color: burlywood">View Staff Record</h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <th>Staff Information
                    </th>
                    <th>Enter Data
                    </th>
                </tr>
                <tr>
                    <td>Staff Name
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="staffName"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Staff Designation 
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="staffDesignation"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="staffaddress" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone Number
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="staffPhoneNumber"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="addstaffrecords" Text="ADD Records" OnClick="addstaffrecords_Click" runat="server" />
        <asp:Button ID="backButton" runat="server" Text="Back"
            OnClientClick="JavaScript:window.history.back(1);return false;"></asp:Button>
    </form>
</body>
</html>
