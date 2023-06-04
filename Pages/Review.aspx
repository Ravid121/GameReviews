<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="My_Website.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  style="background-color: #1A374D ">
<%--    הדף שבו יש את כל הביקורות על המשחקים--%>
<h2 style="text-align:left; border-bottom: solid 2px black">Reviews Page</h2>
<h3 style="text-align:left">
    Here is the Reviews page here you will find reviews about the games
    <br />this reviews will show you about the games and if its good for you to play them
</h3>
<table style="margin:auto">
    <tbody>
        <tr>
            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/rs-TN9gXuP0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/_9MStMq6eVU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/aqVSUb3YZGw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
        <tr>
            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/3poGtCCBMxQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/MgR9XBBEKjI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/5odUbKLpju8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
        <tr>
            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/qKld97rjZD4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/Fj0D9_oecO4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
            <td><iframe width="560" height="315" src="https://www.youtube.com/embed/rdiW-yBDvOo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
    </tbody>
</table>
    <img class="logo" style="  margin-top: 200px;" src="../imges/logo.jpg" />
</asp:Content>
