<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="My_Website.Pages.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Number of sessions =  <%=  Application["sessions"] %></h3>
    <h3> Connected =  <%=  Application["Connected"] %></h3>
    <h3> Number of Users =  <%=  Application["Loggings"] %></h3>
<%--    הכמות משתמשים שיש כרגע באתר כמה נכנסו --%>
</asp:Content>
