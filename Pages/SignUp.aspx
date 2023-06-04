<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="My_Website.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Gr</title>
    <link href="../CSS/Pages.css" rel="stylesheet" />
    <script src="../js/signup.js"></script>
</head>
<%--    הדף שבוא אתה יוצר משתמש לאתר--%>
<body style="background-color: #1A374D">
    <h1 style="text-align: left; border-bottom: solid 2px black">Follow this questions to register</h1>
    <form id="form1"  runat="server" method="post">
         <div class="right" > <%="Hello " + Session["username"]%></div> 
        <table>
            <tr>
                <td>
                    <label style="font-family: Arial" for="userName"><b>UserName: </b></label>
                </td>
                <td>
                    <input type="text" name="userName" id="userName" oninput=" usernamechack()" /></td>
                <td>
                    <div id="userNamemsg"></div>
                    <div id="userNameAlert" runat="server"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" for="pass"><b>Password: </b></label>
                </td>
                <td>
                    <input type="password" name="pass" id="pass" oninput="Passwordchack()" />
                </td>
                <td>
                    <div id="passwordmsg"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" for="Password Verification"><b>Password Verification: </b></label>
                </td>
                <td>
                    <input type="password" name="Password Verification" id="Passv" oninput="Passwordvchack()" />
                </td>
                <td>
                    <div id="Passwordmsgv"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" for="Email Address"><b>Email Address: </b></label>
                </td>
                <td>
                    <input type="text" name="email" id="email" oninput="Emailchack()" /></td>
                <td>
                    <div id="emailmsg"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" for="name"><b>Name: </b></label>
                </td>
                <td>
                    <input type="text" name="name" id="name" oninput="namechack()" name="name" /></td>
                <td>
                    <div id="namemsg"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" for="Last Name"><b>Last Name: </b></label>
                </td>
                <td>
                    <input type="text" name="lastname" id="lastname" oninput="lastnamechack()" /></td>
                <td>
                    <div id="lastnamemsg"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" for="city"><b>City: </b></label>
                </td>
                <td>
                    <input type="text" name="city" id="city" oninput="citychack()" /></td>
                <td>
                    <div id="citymsg"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <label style="font-family: Arial" for="Phone Number"><b>Phone Number: </b></label>
                </td>
                <td>
                    <input type="text" name="phone" id="phone" oninput="phonechack()" /></td>
                <td>
                    <div id="phonemsg"></div>
                </td>
            </tr>
        </table>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <p style="font-family: Arial"><b>Please Select Your Gender</b></p>
        <input type="radio" id="male" name="gender" value="Male" onchange="genderchack()">
        <label style="font-family: Arial" for="male"><b>Male</b></label><br>
        <input type="radio" id="female" name="gender" value="female" onchange="genderchack()">
        <label style="font-family: Arial" for="female"><b>Female</b></label><br>
        <input type="radio" id="other" name="gender" value="other" onchange="genderchack()">
        <label style="font-family: Arial" for="other"><b>Other</b></label>
        <div name="gendermsg" id="gendermsg"></div>

        <br />
        <br />
        <label for="date">Birth Date:</label>
        <input type="date" name="date" id="date" onchange="datetimechack()" />
        <div id="datemsg"></div>
        <br />
        <br />
        <br />


        <h1 style="font-family: Arial">In Case you forgot your password answer this two questions</h1>
       <select id="Password Recovery Questions1" name="Password Recovery Questions1" onchange="passanswer1selchack()">
                    <option value=0></option>
                    <option value=1>What is your favorite game?</option>
                    <option value=2>What is the game you played first?</option>
                    <option value=3>What is the platform you playing on</option>
                    <option value=4>What is your favorite gaming company</option>
                </select>
        <div id="passanswerselectmsg"  name="passanswerselectmsg"></div>
                <input type="text" id="passanswer1" name="passanswer1"/>
        <div id="passanswermsg1" name="passanswermsg1"></div>
        <br />
        <br />
    <select id="Password Recovery Questions2" name="Password Recovery Questions2" onchange="passOneSelectFunc()">
                    <option value=0></option>
                    <option value=1>What is your favorite game?</option>
                    <option value=2>What is the game you played first?</option>
                    <option value=3>What is the platform you playing on</option>
                    <option value=4>What is your favorite gaming company</option>
                </select>
        <div id="passanswerselectmsg2"  name="passanswerselectmsg2" ></div>
                <input type="text" id="passanswer2" name="passanswer2"/>
        <div id="passanswermsg2"  name="passanswermsg2" ></div>
        <br />
        <br />
        <br />
        <br />
        <input type="submit" id="sumbit" name="sumbit" value="sumbit" runat="server"  onclick="return validate()"/>
        <input type="reset" onclick="resetForm()" />
    </form>

    <a href="main page.aspx">
        <img class="logo" src="../imges/logo.jpg" />

</body>
</html>
