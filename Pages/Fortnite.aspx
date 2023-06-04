<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="Fortnite.aspx.cs" Inherits="My_Website.Fortnite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="background-color: #1A374D ">
    <%--    דף מידע על פורטנייט--%>
    <h2 style="text-align:left; border-bottom: solid 2px black">Information about Fortnite</h2>
    <h3 style="text-align:left">
        <br />Fortnite is an online video game developed by Epic Games and released in 2017.
        <br /> It is available in three distinct game mode versions that otherwise share the same general gameplay and game engine:
        <br />Fortnite Battle Royale, a free-to-play battle royale game in which up to 100 players fight to be the last person standing
        <br /> Fortnite: Save the World, a cooperative hybrid tower defense-shooter and survival game in which up to four players fight off zombie
        <br /> and defend objects with traps and fortifications they can build
        <br />and Fortnite Creative, in which players are given complete freedom to create worlds and battle arenas.
    </h3>

    <table style="float:right;">
        <tr>
            <td><img   style="margin-top:-190px" src="../imges/fortnite---button-1520296499714.jpg" height="250" /></td>
         
        </tr>

    </table>



    <img class="logo" style="margin-top: 515px;" src="../imges/logo.jpg" />
</asp:Content>
