<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admindash.aspx.cs" Inherits="eVisa.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator Dashboard</title>
    <link rel="stylesheet" href="~/CSS/admindash.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <asp:Label class="uname" ID="uname" runat="server" Text=""></asp:Label>
            <asp:Button class="btn logout-btn" ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
        </div>
        <table>
            <tr>
                <td>
                    <asp:Label class="msgtxt" runat="server" ID="msg" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="sbox">
                <td>
                    <asp:Label runat="server" Text="Search for HR username  "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="hrusername" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button  class="btn view" runat="server" Text="View HR" OnClick="viewhr_Click" />
                </td>
                <td>
                    <asp:Button  class="btn view" runat="server" Text="Update" OnClick="uphr_Click" />
                </td>
                <td>
                    <asp:Button class="btn logout-btn del" ID="deleteHR" runat="server" Text="Delete" OnClick="delHR" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="User ID :"></asp:Label>
                    <asp:TextBox ID="hrid" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:Label runat="server" Text="User name :"></asp:Label>
                    <asp:TextBox ID="hrname" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                </tr>
              <tr>
              <td>
                    <asp:Label runat="server" Text="Visa Request :"></asp:Label>
                    <asp:TextBox ID="visareq" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label runat="server" Text="Feedback :"></asp:Label>
                    <asp:TextBox ID="hrfeedback" runat="server" ReadOnly="True"></asp:TextBox>
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
                    <asp:TextBox ID="onsite" runat="server" ></asp:TextBox>
                </td>
                <td>
                    <asp:Label runat="server" Text="Project details :"></asp:Label>
                    <asp:TextBox ID="project" runat="server" ></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Feedback :"></asp:Label>
                    <asp:TextBox ID="empfeedback" runat="server" ReadOnly="True" ></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
