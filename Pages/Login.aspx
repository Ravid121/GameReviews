<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="My_Website.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>Gr</title>
    <link href="../CSS/Pages.css" rel="stylesheet" />
    <script src="../js/login.js"></script>
</head>

<%--    הדף שבוא מתחברים לאתר/למשתמש שלך--%>

<body style="background-color: #1A374D">
    <h1 style="text-align: left; border-bottom: solid 2px black">Login</h1>
    <form id="form2" runat="server">
        <br />
       <div class="right" > <%="Hello " + Session["username"]%></div> 
        <table>
            <tr>
                <td>
                    <label style="font-family: Arial" for="userName"><b>UserName: </b></label>
                </td>
                <td>
                    <input type="text" name="userName" id="userName" oninput=" usernamechack()" runat="server" /></td>
                <td>
                    <div id="userNamemsg"    ></div>
                </td>
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" for="pass"><b>Password: </b></label>
                </td>
                <td>
                    <input type="password" name="pass" id="pass" oninput="passwordchack()" runat="server" />
                </td>
                <td>
                    <div id="passwordmsg"></div>
                </td>
            </tr>

            <tr>
                <td>
                    <div id="message" runat="server" ></div>
                    <input type="submit" onclick="return Validate()" />
                    <input type="reset" onclick="resetFunc()" 
                    

                </td>
            
            </tr>
        </table>
        <br />

        <p style="font-family: Arial">
            <b>Don't Have An Account Yet? Click Here To Sign Up:
            <a href="SignUp.aspx">Sign up</a>
            </b>
        </p>
        <p style="font-family: Arial">
            <b>Forgot Your Password? Click Here To Recover:
            <a href="Recover.aspx">Recover account</a>
            </b>
        </p>



       



        <a href="main page.aspx"><img class="logo" style="margin-top: 525px;" src="../imges/logo.jpg" /></a>
        
    </form>
</body>
</html>
