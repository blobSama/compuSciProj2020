<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enterInfo.aspx.cs" Inherits="compuSciProj2020.enterInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Enter Watches </title>
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
	<footer id="foot1">
		<p>contact us - ariel.berant@gmail.com</p>
	</footer>
	<div id="uploadOut">
		<div id="uploadIn">
			<h1 id="cent"> Upload Watch </h1>
			<form id="form1" runat="server">

				<label for="myfile">Picture</label><br />
                <asp:TextBox ID="watchPic" CssClass="in" runat="server" onchange="validateImage()" autofocus="autofocus"></asp:TextBox><br />
                <asp:Label ID="linkWrng" runat="server" Text=""></asp:Label><br /><br />
				<label for="amnt">Amount<em class="redF">*</em></label><br />
				<input class="in" name="amnt" id="amnt" type="number" required="required" onchange="validateAmnt()"/><br />
				<label for="amnt" class="lbl1" id="amntWrng">Please fill in amount.</label><br /><br />
				<label for="accnt">I have an account<em class = "redF">*</em></label><br />
				<input type="radio" id="no" name="accntExst" onchange="accntCheck()" required ="required" />
				<label for="no">No</label>
				<input type="radio" id="yes" name="accntExst" onchange="accntCheck()" required ="required" />
				<label for="yes">Yes</label><br />
				<label for="accntExst" class="lbl1" id="noAccnt">Please choose one.</label><br /><br />
				<label for="mail">Email Address</label><br />
				<input class="in" type="text" id="mail" name="mail" placeholder="name@gmail.com" onchange="ValidateEmail()"/><br />
				<label for="mail" class="lbl1" id="mailWrng"></label><br /><br />
				<label for="phone">Mobile Number</label><br />
				<input class="in" type="text" placeholder="0500000000" title="" id="phone" name="phone" onchange="ValidatePhone()"/><br />
				<label for="phone" class="lbl1" id="phoneWrng"></label><br /><br />
				<label for="enquiry">Category<em class = "redF">*</em></label><br />
				<select id="enquiry" name="enquiry" onchange="checkType()" required ="required">
					<option value="Choose...">Choose...</option>
					<option value="sport">Sport</option>
					<option value="dayToDay">Day To Day</option>
					<option value="Official">Official</option>
					<option value="other">Other</option>
				</select><br />
                <asp:Label ID="enqWrng" CssClass="lbl1" runat="server" Text="Please select a category."></asp:Label>
				<br /><br />
				<label for="ftrs">Features<em class = "redF">*</em></label><br />
				<textarea class="in" name="ftrs" id="ftrs" rows="6" cols="25" onchange="ftrsCheck()" required ="required"></textarea><br />
				<label for="ftrs" class="lbl1" id="ftrsWrng">Please fill in features</label><br /><br />
				<label for="cost">Cost<em class = "redF">*</em></label><br />
				<input class="in" name="cost" id="cost" type="number" required ="required" onchange="validateCost()" /><br />
				<label for="cost" class="lbl1" id="costWrng">Please fill in cost</label><br /><br />
				<small><em class = "redF">*</em> indicates a required field</small><br />
				<input type="button" id="check" class="sub1" value="Check form" onclick="validateForm()" />
				<input type="reset" value="Reset" class="sub1" /><br />
                <asp:Label ID="submitWrng" CssClass="lbl1" runat="server" Text=""></asp:Label><br />
                <asp:Button ID="submit" class="sub1" runat="server" Text="Submit" disabled="disabled" OnClick="submit_Click" />

			</form>
		</div>
	</div>
</body>
</html>
