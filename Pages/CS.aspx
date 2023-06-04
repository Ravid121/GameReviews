<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="CS.aspx.cs" Inherits="My_Website.CS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="background-color: #1A374D">
    <%--    דף מידע על קול סיאס גו--%>
        -
        <h2 style="text-align:left; border-bottom: solid 2px black">Information about CS</h2>
        <h3 style="text-align:left">
            <br />Counter-Strike (CS) is a series of multiplayer first-person shooter video games in which teams of terrorists battle to perpetrate an act of terror
            <br />(bombing, hostage-taking, assassination) while counter-terrorists try to prevent it (bomb defusal, hostage rescue, escort mission)
            <br />The series began on Windows in 1999 with the release of the first game, Counter-Strike.
            <br />It was initially released as a modification ("mod") for Half-Life that was designed by Minh "Gooseman" Le and Jess "Cliffe" Cliffe
            <br /> before the rights to the mod's intellectual property were acquired by Valve, the developers of Half-Life, who then turned Counter-Strike into a retail product released in 2000.
        </h3>
        <table style="float:right;">
            <tr>
                <td><img   style="margin-top:-165px" src="../imges/CS-GO3.jpg"  height="250" width="250" /></td>
            </tr>

        </table>
    <img class="logo" style="margin-top: 500px;" src="../imges/logo.jpg" />
</asp:Content>
