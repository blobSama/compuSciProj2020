<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usersData.aspx.cs" Inherits="compuSciProj2020.usersData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> All Users </title>
	<link rel="stylesheet" type="text/css" href="styleSheet.css"/>
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
            <li style="float:right"><asp:Label ID="hello" CssClass="greet" runat="server" Text=""></asp:Label></li>
        </ul>
        <br/>
    </div>               
	<div id="title">
		<p>SmartWatch Comparison</p>
	</div>
	<div class="wtchData">
		<form class="wtchData" id="form1" runat="server">
			<div class="wtchData" >
                <asp:GridView ID="GridView1" CssClass="gridData" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="User ID" />
                        <asp:BoundField DataField="firstName" HeaderText="User First Name" />
                        <asp:BoundField DataField="lastName" HeaderText="User Last Name" />
                        <asp:BoundField DataField="mailAdrs" HeaderText="User Mail Adress" />
                        <asp:BoundField DataField="age" HeaderText="User Age" />
                        <asp:BoundField DataField="password" HeaderText="User Password" />
                    </Columns>
                </asp:GridView>
			</div>
		</form>
	</div>
    
	<footer id="foot1">
		<p>contact us - ariel.berant@gmail.com</p>
	</footer>
</body>
</html>
