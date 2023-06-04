<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="My_Website.UpdateUser" ClientIDMode="Static" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/Edit.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="background-color: #1A374D">
<%--    הדף שבו אתה מעדכן את הפרטים של המשתמש--%>

    <h1 style="text-align:center; border-bottom: solid 2px black">Edit User</h1>
    <br />

        <table  style="margin-right:auto; margin-left:auto" >
            <tr>
                <td>
                    <label style="font-family: Arial"><b>UserName: </b></label>
                </td>
                <td>
                    <input type="text" name="userName" id="userName" runat="server" />

                </td>
              
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial"><b>Password:  </b></label>
                </td>
                <td>
                    <input type="password" name="pass" oninput="passwordchack()" id="pass" runat="server" />
                     <div id="passwordmsg"></div>
                </td>
              
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" ><b>Password Verification: </b></label>
                </td>
                <td>
                    <input type="password" name="Password Verification"  id="Passv" runat="server" />
                     
                </td>
               
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" ><b>Email Address: </b></label>
                </td>
                <td>
                    <input type="text" name="email" id="email" runat="server" /></td>
              
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial"><b>Name: </b></label>
                </td>
                <td>
                    <input type="text" name="name" id="name" runat="server" /></td>
              
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" ><b>Last Name: </b></label>
                </td>
                <td>
                    <input type="text" name="lastname" id="lastname" runat="server" /></td>
              
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" ><b>City: </b></label>
                </td>
                <td>
                    <input type="text" name="city" id="city" runat="server" /></td>
              
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" ><b>Phone Number: </b></label>
                </td>
                <td>
                    <input type="text" name="phone" id="phone" runat="server" /></td>
               
               
            </tr>
            <tr>
                <td>
                     <asp:RadioButtonList ID="gender" runat="server">
                      <asp:ListItem Text="Male"></asp:ListItem>
                      <asp:ListItem Text="Female"></asp:ListItem>
                      <asp:ListItem Text="Other"></asp:ListItem>
                     </asp:RadioButtonList>



                </td>
                <%--<td>  <p style="font-family: Arial"><b>Please Select Your Gender</b></p>
                        <input type="radio" id="Radio1" name="gender" value="Male" runat="server" >
                        <label style="font-family: Arial" ><b>Male</b></label><br>
                        <input type="radio" id="Radio2" name="gender" value="female" runat="server" >
                        <label style="font-family: Arial" ><b>Female</b></label><br>
                        <input type="radio" id="Radio3" name="gender" value="other" runat="server" >
                        <label style="font-family: Arial" ><b>Other</b></label>

                </td>--%>
            </tr>
            <tr>
                <td> <label >Birth Date:</label>
                      <input type="date" name="date" id="date" runat="server" value="yyyy-dd-MM"/>

                </td>
            </tr>
            <tr>
                <td>
                     <input type="button" value="Update" id="Button1" name="Update" runat="server" onclick="return validate()" onserverclick="btn_UpdateUser" />
                </td>
                <td>
                     <input type="Reset" id="Reset1" name="Reset"  onclick="resetForm()" runat="server" />
                </td>
            </tr>
        </table>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <%--<p style="font-family: Arial"><b>Please Select Your Gender</b></p>
        <input type="radio" id="male" name="gender" value="Male" runat="server" >
        <label style="font-family: Arial" for="male"><b>Male</b></label><br>
        <input type="radio" id="female" name="gender" value="female" runat="server" >
        <label style="font-family: Arial" for="female"><b>Female</b></label><br>
        <input type="radio" id="other" name="gender" value="other" runat="server" >
        <label style="font-family: Arial" for="other"><b>Other</b></label>
        <div name="gendermsg" id="gendermsg"></div>

        <br />
        <br />
        <label for="date">Birth Date:</label>
        <input type="date" name="date" id="date" runat="server" />
        <div id="datemsg"></div>
        <br />
        <br />
        <br />
       <input type="button" value="Edit" id="Update" name="Update" runat="server" />
     <input type="Reset" id="Reset" name="Reset" runat="server" />--%>
    <img class="logo" style="margin-top: 500px;" src="../imges/logo.jpg" />




</asp:Content>
