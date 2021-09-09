<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="watchData.aspx.cs" Inherits="compuSciProj2020.watchData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Enter Watches </title>
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
            <li><asp:HyperLink CssClass="bttn1" ID="infoUpdate" href="updateInfo.aspx" runat="server">Update User Info</asp:HyperLink></li>
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
				<asp:GridView ID="GridView1" runat="server" CssClass="gridData" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="watchFeatures" HeaderText="Features">
                        </asp:BoundField>
                        <asp:BoundField DataField="cost" HeaderText="Cost">
                        </asp:BoundField>
                        <asp:BoundField DataField="amount" HeaderText="Amnt. for Sale">
                        </asp:BoundField>
                        <asp:BoundField DataField="type" HeaderText="Category">
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="picture" HeaderText="Picture">
                            <ControlStyle Height="150px" Width="250px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="phoneNum" HeaderText="Seller Phone Num.">
                        </asp:BoundField>
                        <asp:BoundField DataField="mailAdd" HeaderText="Seller Mail Adress">
                        </asp:BoundField>
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
