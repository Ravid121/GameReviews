function validate() {
    var res = true;
    res = usernamechack() && res;
    res = Passwordchack() && res;
    res = Passwordvchack() && res;
    res = Emailchack() && res;
    res = namechack() && res;
    res = lastnamechack() && res;
    res = citychack() && res;
    res = phonechack() && res;
    res = genderchack() && res;
    res = datetimechack() && res;
    res = passanswerchack() && res;
    res = passanswer1selchack() && res;
    res = passanswerchack2() && res;
    res = passanswer1selchack2() && res;
    return res;
}
function resetForm() {
    var usernamemsg = document.getElementById("userNamemsg");
    var passwordmsg = document.getElementById("passwordmsg");
    var Passwordmsgv = document.getElementById("Passwordmsgv");
    var emailmsg = document.getElementById("emailmsg");
    var namemsg = document.getElementById("namemsg");
    var lastnamemsg = document.getElementById("lastnamemsg");
    var citymsg = document.getElementById("citymsg");
    var phonemsg = document.getElementById("phonemsg");
    var gendermsg = document.getElementById("gendermsg");
    var datetimemsg = document.getElementById("datemsg");
    var passanswermsg = document.getElementById("passanswermsg1");
    var passanswer1selmsg = document.getElementById("passanswerselectmsg");
    var passanswermsg2 = document.getElementById("passanswermsg2");
    var passanswer1selmsg2 = document.getElementById("passanswerselectmsg2");

    usernamemsg.innerHTML = "";
    passwordmsg.innerHTML = "";
    Passwordmsgv.innerHTML = "";
    emailmsg.innerHTML = "";
    namemsg.innerHTML = "";
    lastnamemsg.innerHTML = "";
    citymsg.innerHTML = "";
    phonemsg.innerHTML = "";
    gendermsg.innerHTML = "";
    datetimemsg.innerHTML = "";
    passanswermsg.innerHTML = "";
    passanswer1selmsg.innerHTML = "";
    passanswermsg2.innerHTML = "";
    passanswer1selmsg2.innerHTML = "";
}

function usernamechack() {
    var username = document.getElementById("userName").value;
    var usernamemsg = document.getElementById("userNamemsg");
    if (username == "") {
        usernamemsg.innerHTML = "You must enter a Username";
        usernamemsg.style.color = "red";
        return false
    }
    else if (!isLetter(username[0])) {
        usernamemsg.innerHTML = "You must start with an English letter";
        usernamemsg.style.color = "red";
        return false;
    }
    else if (username.length < 2) {
        usernamemsg.innerHTML = "Minimum letters is 2";
        usernamemsg.style.color = "red";
        return false;
    }
    var noSpaces = / /
    if (noSpaces.test(username)) {
        usernamemsg.innerHTML = "Can't contain spaces";
        usernamemsg.style.color = "red";
        return false;
    }
    var hebrew = /[\u0590-\u05FF]/;
    if (hebrew.test(username)) {
        usernamemsg.innerHTML = "Can't contain Hebrew letters";
        usernamemsg.style.color = "red";
        return false;
    }
    else {
        usernamemsg.innerHTML = "";
        return true;
    }
}
function passwordchack() {
    var password = document.getElementById("pass").value;
    var passwordmsg = document.getElementById("passwordmsg");
    if (password == "") {
        passwordmsg.innerHTML = "You must enter a Password";
        passwordmsg.style.color = "red";
        return false
    }
    else if (pass.length < 6) {
        passwordmsg.innerHTML = "Password must contain between 6 and 12 characters";
        passwordmsg.style.color = "red";
        return false;
    }
    else if (pass.length > 12) {
        passwordmsg.innerHTML = "Password must contain between 6 and 12 characters";
        passwordmsg.style.color = "red";
        return false;
    }
    var hebrew = /[\u0590-\u05FF]/;
    if (hebrew.test(password)) {
        passwordmsg.innerHTML = "You must use English letters only, numbers and special characters";
        passwordmsg.style.color = "red";
        return false;
    }
    var noSpaces = / /
    if (noSpaces.test(password)) {
        passwordmsg.innerHTML = "Can't contain spaces";
        passwordmsg.style.color = "red";
        return false;
    }
    var hebrew = /[\u0590-\u05FF]/;
    if (hebrew.test(password)) {
        passwordmsg.innerHTML = "Can't contain Hebrew letters";
        passwordmsg.style.color = "red";
        return false;
    }
    var capital = /[A-Z]/
    if (!capital.test(password)) {
        passwordmsg.innerHTML = "Must contain at least one capital letter";
        passwordmsg.style.color = "red";
        return false;
    }
    var number = /[1-9]/
    if (!number.test(password)) {
        passwordmsg.innerHTML = "Must contain at least one number";
        passwordmsg.style.color = "red";
        return false;
    }
    var threeChars = /^(?!.(.)\1\1.).*$/;
    if (!threeChars.test(pass)) {
        passwordmsg.innerHTML = "Three or more identical characters cannot be consecutive";
        passwordmsg.style.color = "red";
    }
    var specialChar = /[@!#$%&()-+]/;
    if (!specialChar.test(password)) {
        passwordmsg.innerHTML = "Password must contain at least one special character";
        passwordmsg.style.color = "red";
        return false;
    }
    else {
        passwordmsg.innerHTML = "";
        return true
    }


}