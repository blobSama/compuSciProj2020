<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="watchRate.aspx.cs" Inherits="compuSciProj2020.watchRate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Watch Rating</title>
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
        <input type="text" id="search" name="search" placeholder="Search..." /><br />
    </div>
		<div id="title">
			<p>SmartWatch Comparison</p>
		</div>
    <div id="rateOut">
        <div id="rateIn">
            <h1 id="cent">Rate Watch </h1>
            <form action="?" method="post">
                <label for="rate">Enter a number between 1 to 5:</label><br />
                <input type="number" max="5" min="1" /><br />
                <textarea id="ftrs" placeholder="Please comment" rows="6" cols="25" onchange="ftrsCheck()" required="required"></textarea><br />
                <input type="button" id="check" class="sub1" value="Check rate" onclick="validateForm()" />
                <input type="reset" value="Reset" class="sub1" />
                <br />
                <label for="submit" class="lbl1" id="submitWrng"></label>
                <br />
                <input type="submit" value="Submit" class="sub1" id="submit" disabled="disabled" />
            </form>
        </div>
    </div>
		<footer id="foot1">
			<p>contact us, etc.</p>
		</footer>
</body>
</html>
