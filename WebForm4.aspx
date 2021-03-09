<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="compuSciProj2020.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function check() {
            Boolean isOk = null;
            var day = int(document.getElementById("Calendar1").getAttribute("SelectedDate").substring(5, 7));
            var month = int(document.getElementById("Calendar1").getAttribute("SelectedDate").substring(9));
            if () {
                ok = true;
            }
            else {
                ok = false;
            }

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server" onClick="check()" SelectedDate="2021-02-17"></asp:Calendar>
        </div>
    </form>
</body>
</html>
