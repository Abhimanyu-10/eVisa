<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hrdash.aspx.cs" Inherits="eVisa.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HR dashboard</title>
    <link rel="stylesheet" href="~/CSS/hrdashboard.css"/>
</head>

</html>
<body>
    <form id="form2" runat="server">
        <div class="header">
            <div class="left">
                <asp:Label class="uname" ID="hrname" runat="server" Text=""></asp:Label>
            </div>
            <div class="right">
                <asp:Button class="btn" ID="changepwd" runat="server" Text="Change Password" OnClick="changepwd_Click" />
                <asp:Button class="btn logout-btn" ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
            </div>
         </div>
            <table>
                <tr>
                <td>
                    <asp:Label class="msgtxt" runat="server" ID="msg" Text=""></asp:Label>
                </td>
            </tr>
                <tr  class="sbox">
                <td>
                    <asp:Label runat="server" Text="Search for Employee username  "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="empusername" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button  class="btn view" runat="server" Text="View Employee" OnClick="viewemp_Click" />
                </td>
                <td>
                    <asp:Button  class="btn view" runat="server" Text="Update" OnClick="upemp_Click" />
                </td>
                <td>
                    <asp:Button class="btn logout-btn del" ID="deleteemp" runat="server" Text="Delete" OnClick="delemp" />
                </td>
            </tr>
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
                    <asp:TextBox ID="onsite" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label runat="server" Text="Project details :"></asp:Label>
                    <asp:TextBox ID="project" runat="server"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Feedback :"></asp:Label>
                    <asp:TextBox ID="empfeedback" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>