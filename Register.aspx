<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="compuSciProj2020.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Register </title>
    <link rel="stylesheet" type="text/css" href="styleSheet.css" />
    <script src="projScript.js"></script>
</head>
<body>
    <div id="header">
        <a class="bttn1" href="Homepage.aspx">Home Page</a>
        <a class="bttn1" href="watchRate.aspx">SmartWatch Rate</a>
        <a class="bttn1" href="watchInfo.aspx">Watch Data</a>
        <a class="bttn1" href="Register.aspx">Register</a>
        <a class="bttn1" href="gallery.aspx">Gallery</a>
        <a class="bttn1" href="enterInfo.aspx">Enter watch</a>
        <input type="text" id="search" name="search" placeholder="Search..." /><br/>
    </div>
    <br />
    <div id="title">
        <p>SmartWatch Comparison</p>
    </div>
    <div id="registOut">
        <div id="regist">
            <h1> Register </h1>
            <form id="form1" runat="server">
                First Name:
                <em class="redF">*</em><br />
                <input type="text" class="name" id="fName" name="name" required="required"/><br />
                <asp:Label ID="wrngName" runat="server" Text=""></asp:Label>
                <br /> Last Name:
                <em class="redF">*</em><br />
                <input type="text" class="name" id="lName" name="name" required="required"/><br />
                <asp:Label ID="wrngFmly" runat="server" Text=""></asp:Label><br /> 
                Email Adress:<br />
                <input type="text" id="mail" name="mail" placeholder="name@gmail.com"/><br />
                <asp:Label ID="mailWrng" runat="server" Text=""></asp:Label><br /> 
                Age: <br />
                <input type="number" id="age" name="age"/><br />
                <asp:Label ID="ageWrng" runat="server" Text=""></asp:Label><br />
                Password(minimum 8 chars):
                <em class="redF">*</em><br />
                <input type="password" id="pass" name="password" pattern=".{8,12}" title="8 to 12 characters" required ="required"/><br />
                <asp:Label ID="passWrng" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="enterId" runat="server" Text="Id:"></asp:Label><em class="redF">*</em><br />
                <asp:TextBox ID="Uid" runat="server"></asp:TextBox><br />
                <asp:Label ID="idWrng" runat="server" Text=""></asp:Label><br />
                <input type="button" id="check" class="sub1" value="Check form" onclick="checkAll()" />
				<input type="reset" value="Reset" class="sub1" /><br />
                <asp:Button ID="submit" CssClass="sub1" runat="server" Text="Submit" disabled="disabled"/>
                <br />
                <small>
                    <em class="redF">*</em> indicates a required field
                </small>
            </form>
        </div>
    </div>
    <footer id="foot1">
        <p>contact us, etc.</p>
    </footer>
</body>
</html>
