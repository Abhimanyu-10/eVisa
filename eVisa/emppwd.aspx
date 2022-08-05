<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emppwd.aspx.cs" Inherits="eVisa.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Change Password</title>
    <link rel="stylesheet" href="~/CSS/login.css"/>
</head>

<body>
    <div class="form-container">
        <h1>Change Password</h1>
        <form id="pwd" runat="server">
            <div class="form-control">
                <asp:Label ID="cpwd" runat="server" Text="Current Password"></asp:Label>
                <asp:TextBox ID="crntpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqpwd" runat="server" ControlToValidate="crntpwd" ErrorMessage="!" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:Label ID="npwd" runat="server" Text="New Password"></asp:Label>
                <asp:TextBox ID="newpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="newpwd" ErrorMessage="!" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:Label ID="cfpwd" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="cnfrmpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cnfrmpwd" ErrorMessage="!" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:Button ID="changepwd" class="sub-btn" runat="server" Text="Chnage password" OnClick="Cpwd_Click" />
            </div>
            <div class="form-control">
                <asp:Label ID="msg" runat="server" Text=""></asp:Label>
                <asp:CompareValidator ID="comparepwd" runat="server" ControlToValidate="cnfrmpwd" ControlToCompare="newpwd" ErrorMessage="Passwords do not Match" ForeColor="red"></asp:CompareValidator>
            </div>
        </form>
    </div>
</body>

</html>
