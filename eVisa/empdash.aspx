<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="empdash.aspx.cs" Inherits="eVisa.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Dash</title>
    <link rel="stylesheet" href="~/CSS/empdashboard.css"/>
</head>
<body>
    <form id="form2" runat="server">
        <div class="header">
            <div class="left">
                <asp:Label class="uname" ID="uname" runat="server" Text=""></asp:Label>
            </div>
            <div class="right">
                <asp:Button class="btn" ID="Button2" runat="server" Text="Change Password" OnClick="changepwd_Click" />
                <asp:Button class="btn logout-btn" ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
            </div>
        </div>
            <table>
            <tr>
                <td>
                    <asp:Label runat="server" Text="User ID :"></asp:Label>
                    <asp:TextBox ID="empid" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:Label runat="server" Text="Employee Name :"></asp:Label>
                    <asp:TextBox ID="empname" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Onsite details :"></asp:Label>
                    <asp:TextBox ID="onsite" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:Label runat="server" Text="Project details :"></asp:Label>
                    <asp:TextBox ID="project" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Feedback :"></asp:Label>
                    <asp:TextBox ID="empfeedback" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            </table>
            <table class="sbox">
            <tr>
                <td>
                    <asp:Label runat="server" Text="Update Project details :"></asp:Label>
                    <asp:TextBox ID="upproject" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button  class="btn view" runat="server" Text="Submit" OnClick="upemp_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Give feedback :"></asp:Label>
                    <asp:TextBox ID="gfeed" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button  class="btn view" runat="server" Text="Submit" OnClick="gfeed_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

