<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main page.aspx.cs" Inherits="My_Website.Pages.main_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/Main.css" rel="stylesheet" />
    <script src="../js/JavaScript.js"></script>
    <title></title>
</head>
<body  style="background-color: #1A374D ">
   
  
    <%--העמוד הראשי יש פה את הבר הראשי ששולח אותך לכל הדפים--%>
        <ul>
            <li><a href="main%20page.aspx">Main page</a></li>
            <li id="Info" runat="server"><a href="information.aspx">Information</a></li>
            <li id="Rev" runat="server"><a href="Review.aspx">Review</a></li>
            <li id="About" runat="server"><a href="about.aspx">About</a></li>
             <li id="admin" runat="server"><a href="admin.aspx">Admin</a></li>
               <li style="float:right" id="logout" runat="server" ><a href="LogOut.aspx">Logout</a></li>
            <li style="float:right"><a href="Login.aspx">Login</a></li>
        </ul>
 
             <div class="right">  <%="Hello " + Session["username"]%></></div>
  





<br />
<h1 style="background-color: #406882; color: black; text-align: center "><i>Welcome To GR here you can find information about games reviews and more enjoy</i></h1>
    <img class="logo" style="margin-top: 685px;"src="../imges/logo.jpg" />
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
