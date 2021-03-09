<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="compuSciProj2020.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Homepage </title>
    <link rel="stylesheet" type="text/css" href="styleSheet.css"/>
</head>
<body>
     <div id="header">
        <a class="bttn1" href="Homepage.aspx">Home Page</a>
        <a class="bttn1" href="watchRate.aspx">SmartWatch Rate</a>
        <a class="bttn1" href="watchInfo.aspx">Watch Data</a>
        <a class="bttn1" href="Register.aspx">Register</a>
        <a class="bttn1" href="gallery.aspx">Gallery</a>
        <a class="bttn1" href="enterInfo.aspx">Enter watch</a>
        <input type="text" id="search" name="search" placeholder="Search..."/><br/>
    </div>
    <br/>
    <div id="title">
        <p>SmartWatch Comparison</p>
    </div>
    <footer id="foot1">
        <p>contact us, etc.</p>
    </footer>
    <img id="img1" src="https://i.pcmag.com/imagery/reviews/06wOWJm5EwAs7OFrSQ1G2fU-6.fit_lpad.size_624x364.v_1569479241.jpg"
        alt="Smart watch" title="smart"/>
</body>
</html>
