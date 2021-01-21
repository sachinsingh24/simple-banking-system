<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="Simple_Banking_System.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheet.css" rel="stylesheet" />
</head>
<body class="welcomebody">
        <div class="box">
            <h2 class="welcomeh2">
                welcome To
            </h2>
            <h1 class="welcomeh1">
                Credit Management
            </h1>
            <p>
                Choose a user and transfer the credit from one user to another
            </p> 
            <form runat="server">
                <asp:Button runat="server" Text="VIEW CUSTOMAR" CssClass="Btncust" OnClick="Btncust_Click" />
            </form>
        </div>
</body>
</html>
