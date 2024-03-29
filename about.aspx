﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="compuSciProj2020.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
	<link rel="stylesheet" type="text/css" href="styleSheet.css"/>
    <script src="projScript.js"></script>

</head>
<body>
    <div id="header">
        <ul>
            <li><a class="bttn1" href="Homepage.aspx">Home Page</a></li>
            <li><a class="bttn1" href="signIn.aspx">Sign In</a></li>
            <li><a class="bttn1" href="watchData.aspx">Watch Data</a></li>
            <li><a class="bttn1" href="Register.aspx">Register</a></li>
            <li><a class="bttn1" href="usersData.aspx">Users Data</a></li>
            <li><a class="bttn1" href="enterInfo.aspx">Enter watch</a></li>
            <li><a class="bttn1" href="about.aspx">About Us</a></li>
            <li><asp:HyperLink CssClass="bttn1" ID="infoUpdate" href="updateInfo.aspx" runat="server">Update User Info</asp:HyperLink></li>
            <li style="float:right"><asp:Label ID="hello" CssClass="greet" runat="server" Text=""></asp:Label></li>
        </ul>
        <br/>
    </div>
    <br />
    <div id="title">
        <p>SmartWatch Comparison</p>
    </div>
    <form id="form1" runat="server">
        <div id="registOut">
            <div id="regist">
                <div>
                    <h1>About Us</h1><br />
                    <p>
                        I am Ariel Berant, 17 years old from Ramat-Gan. I wanted to buy myself a good quality smart watch.
                    </p>
                    <p>
                        So I tried to look for a good watch on the internet, but couldn't find one. Incidentally, we also had a computer science project at the time on any subject of our choosing.
                    </p>
                    <p>
                         The Idea of a Smart Watch comparison site popped right up, and this site was born!
                    </p>
                </div>
            </div>
        </div>
    </form>
    <footer id="foot1">
		<p>contact us - ariel.berant@gmail.com</p>
	</footer>
</body>
</html>
