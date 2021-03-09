<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="watchData.aspx.cs" Inherits="compuSciProj2020.watchData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Enter Watches </title>
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
		<input type="text" id="search" name="search" placeholder="Search..." /><br/>
	</div>                   
	<div id="title">
		<p>SmartWatch Comparison</p>
	</div>
	<div class="wtchData">
		<form class="wtchData" id="form1" runat="server">
			<div class="wtchData" >
				<asp:GridView ID="GridView1" runat="server" CssClass="gridData">
				</asp:GridView>
			</div>
		</form>
	</div>
    
	<footer id="foot1">
		<p>contact us, etc.</p>
	</footer>
</body>
</html>
