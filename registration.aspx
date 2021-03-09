<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="compuSciProj2020.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="enter your i.d:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-right: 0px"></asp:TextBox><br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="enter your first name:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" /><br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </form>
</body>
</html>
