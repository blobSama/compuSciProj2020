<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="watchInfo.aspx.cs" Inherits="compuSciProj2020.watchInfo" %>

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
        <input type="text" id="search" name="search" placeholder="Search..." /><br/>
    </div>
    <br />
    <div id="title">
        <p>SmartWatch Comparison</p>
    </div>
    <footer id="foot1">
        <p>contact us, etc.</p>
    </footer>
    <table style="width:100%">
        <tr>
            <th class="row">Picture</th>
            <th class="row">Cost</th>
            <th class="row">Features</th>
            <th class="row">Category</th>
            <th class="row">Amnt. For Sale</th>
        </tr>
        <tr>
            <th class="row">
                <img src="regWatch.jpg" alt="Smart watch" title="smart" width="200" height="175" />
            </th>
            <th class="row">299$</th>
            <th class="row">2GB RAM, 32bit- cpu</th>
            <th class="row">Sports</th>
            <th class="row">38</th>
        </tr>
        <tr>
            <th class="row">
                <img src="dtdWatch.jpg" alt="Smart watch" title="smart" width="200" height="175" />
            </th>
            <th class="row">599$</th>
            <th class="row">3GB RAM, 32bit- cpu</th>
            <th class="row">Day To Day</th>
            <th class="row">10</th>
        </tr>
        <tr>
            <th>
                <img src="officialWatch.jpg" alt="Smart watch" title="smart" width="200" height="175" />
            </th>
            <th>199$</th>
            <th>1GB RAM, 32bit- cpu</th>
            <th>Official</th>
            <th>11</th>
        </tr>
    </table>
</body>
</html>
