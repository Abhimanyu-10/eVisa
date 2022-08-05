<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emplogin.aspx.cs" Inherits="eVisa.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Login</title>
    <link href="~/CSS/login.css" rel="Stylesheet" type="text/css" />
</head>
<body>
   <div class="form-container">
<h1>Employee login</h1>
    <form id="loginform" runat="server">
        <div class="form-control">
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="empname" runat="server"></asp:TextBox>
        </div>

        <div class="form-control">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-control">
            <asp:Button ID="btnlogin" class="sub-btn" runat="server" Text="Login" OnClick="btnlogin_Click" />
        </div>
        <div class="form-control">
            <asp:Label ID="errmsg" runat="server" Text="Incorrect Username or Password" ForeColor="Red"></asp:Label>
        </div>
    </form>
</div> 
</body>
</html>
