<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="information.aspx.cs" Inherits="My_Website.information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="background-color: #1A374D ">
<%--          דף עם כל הדפי מידע של המשחקים--%>
<br />

<h2 style="text-align:right"></h2>


<h2 style="text-align:left; border-bottom: solid 2px black">Information page</h2>
 <h2>This is the information page you have all the info you need here enjoy</h2>
<br />
<table style="margin-right:auto; margin-left:auto">
        <tr>
            <td><a href="mario.aspx"><img src="../imges/dsadajpg.jpg" height="200" /></a></td>
            <td><a href="Sonic.aspx"><img src="../imges/sonic.jpg"  height="200" /></a></td>
            <td><a href="Black ops.aspx"><img src="../imges/black.jpg" height="200" /></a></td>
        <tr>
            <td><a href="Fortnite.aspx"><img src="../imges/fortnite.jpg" height="200" /></a></td>
            <td><a href="CS.aspx"><img src="../imges/cs.jpg"  height="200" /></a></td>
            <td><a href="OverWatch.aspx"><img src="../imges/maxresdefault.jpg"  height="200"/></a></td>
       <tr>
           <td><a href="Valornt.aspx"><img src="../imges/valorant-offwhitelaunch-keyart.jpg" height="200" /></a></td>
           <td><a href="Rocket.aspx"><img src="../imges/Rocket_League_coverart.jpg" height="200" /></a></td>
           <td><a href="Multiversus.aspx"><img src="../imges/MultiVersus.jpg" height="200" /></a></td>
           </tr>
</table>
    <img class="logo" style="margin-top: 165px;" src="../imges/logo.jpg" />
</asp:Content>
