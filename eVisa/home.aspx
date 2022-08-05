<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="eVisa.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eVisa home</title>
    <link rel="stylesheet" href="~/CSS/home.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
            <asp:Label class="title" ID="uname" runat="server" Text="Welcome to eVisa Portal!"></asp:Label>
        </div>
            <div>
                <h1>Sign in to proceed further...</h1>
            </div>
            <table>
                <tr>
                    <td>
                        <asp:hyperlink id="admin" runat="server" NavigateUrl="~/adminlogin.aspx">
                        <asp:image class="img" id="adminimg" runat="server" imageurl="~/img/admin.png"/>
                        </asp:hyperlink>
                    </td>
                    <td>
                        <asp:hyperlink id="hr" runat="server" NavigateUrl="~/hrlogin.aspx">
                        <asp:image class="img" id="hrimg" runat="server" imageurl="~/img/hr.png" />
                        </asp:hyperlink>
                    </td>
                    <td>
                        <asp:hyperlink id="employee" runat="server" NavigateUrl="~/emplogin.aspx">
                        <asp:image class="img" id="emping" runat="server" imageurl="~/img/employee.png" />
                        </asp:hyperlink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="title" ID="Label1" runat="server" Text="Administrator"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="title" ID="Label2" runat="server" Text="HR"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="title" ID="Label3" runat="server" Text="Employee"></asp:Label>
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
