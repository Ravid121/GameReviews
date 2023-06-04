<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="Admin2.aspx.cs" Inherits="My_Website.Admin2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Pages.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    הדף שרשום בו את הטבלת משתמשים--%>
    <style>
        
        table.usersTable {
            margin-left: auto;
            margin-right: auto;
        }

            table.usersTable td, table.usersTable th {
                border: 3px double;
            }

            table.usersTable tbody td {
                font-size: 18px;
            }

            table.usersTable tfoot td {
                font-size: 18px;
            }

            table.usersTable tfoot .links {
                text-align: right;
            }

                table.usersTable tfoot .links a {
                    display: inline-block;
                    border-radius: 5px;
                }
    </style>
   
    <div>
        <br />
        Enter Text to search name:
        <input type="text" name="filter" id="filter"  />
        <br />
        <input type="button"  value="Filter"  name="btnFilter" id="btnFilter" runat="server"  onserverclick="btnFilter_ServerClick"/>
         <br />
        <input type="button"  value="Delete"  name="btnDelete" id="btnDelete" runat="server"  onserverclick="btnDelete_ServerClick"/>
        <input type="button"  value="Edit"  name="btnEdit" id="btnEdit" runat="server"  onserverclick="btnEdit_ServerClick"/>
    </div>
    
   <div runat="server"  id="message" style="background-color:white"   ></div>
   <div runat="server"  id="tableDiv" style="background-color:white"   ></div>
    sort by:
    <input list="sort" name="sortTable" id="sortTable"  runat="server" />
    <datalist id="sort"  >
        <option value="UserID"  />
        <option value="Username"  />
        <option value="FirstName"  />
        <option value="LastName"  />
    </datalist>
    <input list="direction" name="dir" id="dir" runat="server" />
    <datalist id="direction">
        <option value="Asc"  />
        <option value="Desc"  />
    </datalist>
    <input type="button" value="sort" name="btnSort" id="btnSort" runat="server" onserverclick="btnSort_ServerClick" />




</asp:Content>
