<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recover.aspx.cs" Inherits="My_Website.Recover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GR</title>
    <link href="../CSS/Pages.css" rel="stylesheet" />
    <script src="../js/recover.js"></script>
    <style type="text/css">
        #userName {
            width: 163px;
        }
    </style>
</head>
<%--    הדף שבוא אתה משחזר את המשתמש שלך על ידי שאלות שעינת עליהם שיצרת משתמש--%>
<body  style="background-color: #1A374D ">
    <form  style="text-align:center" id="form1" runat="server">
         <div class="right" > <%="Hello " + Session["username"]%></div> 
        <h1 style="text-align: left; border-bottom: solid 2px black">Recover password</h1>

        <div style="">
            <div style="font-family: Arial">Please enter your Username</div>
            <div  id="message" runat="server"></div>
            <input type="text" id="userName" name="userName"  runat="server"/>
        </div>
        <div style="font-family: Arial">Enter the answers to recover the password</div>
     <select id="Password Recovery Questions1" onchange="passanswer1selchack()">
                    <option value=0></option>
                    <option value=1>What is your favorite game?</option>
                    <option value=2>What is the game you played first?</option>
                    <option value=3>What is the platform you playing on</option>
                    <option value=4>What is your favorite gaming company</option>
                </select>
        <div id="passanswerselectmsg" ></div>
                <input type="text" id="passanswer1"  runat="server"/>
        <div id="passanswermsg1" ></div>
        <br />
        <br />
    <select id="Password Recovery Questions2" onchange="passOneSelectFunc()">
                    <option value=0></option>
                    <option value=1>What is your favorite game?</option>
                    <option value=2>What is the game you played first?</option>
                    <option value=3>What is the platform you playing on</option>
                    <option value=4>What is your favorite gaming company</option>
                </select>
        <div id="passanswerselectmsg2"></div>
                <input type="text" id="passanswer2" runat="server" />
        <div id="passanswermsg2"></div>
        <br />
        <br />
        <br />
        <input type="submit" id="sumbit" name="sumbit" value="sumbit" onclick="return validate()" />
        <input type="reset"  onclick="resetForm()" />
       <div  id="passwordmessage" runat="server"></div>

    <a href="main page.aspx"><img class="logo" style=" margin-top: 625px;" src="../imges/logo.jpg" /></a>
    </form>
</body>
</html>
