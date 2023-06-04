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

function Passwordchack() {
    var password = document.getElementById("pass").value;
    var passwordmsg = document.getElementById("passwordmsg");
    if (password == "") {
        passwordmsg.innerHTML = "You must enter a Password";
        passwordmsg.style.color = "red";
        return false
    }
    else if (password.length < 6) {
        passwordmsg.innerHTML = "Password must contain between 6 and 12 characters";
        passwordmsg.style.color = "red";
        return false;
    }
    else if (password.length > 12) {
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
    if (!threeChars.test(password)) {
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
        return true;
    }
}
function Passwordvchack() {
    var password = document.getElementById("pass").value;
    var Passwordv = document.getElementById("Passv").value;
    var Passwordmsgv = document.getElementById("Passwordmsgv");

    if (Passwordv == "") {
        Passwordmsgv.innerHTML = "You must enter a Password Again";
        Passwordmsgv.style.color = "red";
        return false;
    }
    else if (Passwordv != password) {
        Passwordmsgv.innerHTML = "Passwords must match";
        Passwordmsgv.style.color = "red";
        return false;
    }
    else {
        Passwordmsgv.innerHTML = "";
        return true;
    }
}
function Emailchack() {
    var emailAddress = document.getElementById("email").value;
    var emailmsg = document.getElementById("emailmsg");
    if (emailAddress == "") {
        emailmsg.innerHTML = "You must enter an Email";
        emailmsg.style.color = "red";
        return false

    }
    var email = /^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,4})+$/;
    if (!email.test(emailAddress)) {
        emailmsg.innerHTML = "You must enter a valid Email"
        emailmsg.style.color = "red";
        return false;
    }
    else {
        emailmsg.innerHTML = "";
        return true;
    }
}
function namechack() {
    var name = document.getElementById("name").value;
    var namemsg = document.getElementById("namemsg");
    if (name == "") {
        namemsg.innerHTML = "You must enter your Name";
        namemsg.style.color = "red";
        return false
    }
    else if (name.length < 2) {
        namemsg.innerHTML = "Minimum letters is 2";
        namemsg.style.color = "red";
        return false;
    }
    var number = /[1-9]/
    if (number.test(name)) {
        namemsg.innerHTML = "Can't contain numbers";

        return false;
    }
    HebrewChars = new RegExp("[\u0590-\u05FF]");
    EnglishChars = new RegExp("[a-zA-Z-]");
    if (EnglishChars.test(name) && HebrewChars.test(name)) {
        namemsg.innerHTML = "You cant use English and Hebrew together";
        namemsg.style.color = "red";
        return false;
    }
    else {
        namemsg.innerHTML = "";
        return true;
    }
}
function lastnamechack() {
    var lastname = document.getElementById("lastname").value;
    var lastnamemsg = document.getElementById("lastnamemsg");
    if (lastname == "") {
        lastnamemsg.innerHTML = "You must enter your Lastname";
        lastnamemsg.style.color = "red";
        return false

    }
    else if (lastname.length < 2) {
        lastnamemsg.innerHTML = "Minimum letters is 2";
        lastnamemsg.style.color = "red";
        return false;
    }
    var number = /[1-9]/
    if (number.test(lastname)) {
        lastnamemsg.innerHTML = "Can't contain numbers";
        lastnamemsg.style.color = "red";
        return false;
    }
    HebrewChars = new RegExp("[\u0590-\u05FF]");
    EnglishChars = new RegExp("[a-zA-Z-]");
    if (EnglishChars.test(lastname) && HebrewChars.test(lastname)) {
        lastnamemsg.innerHTML = "You cant use English and Hebrew together";
        lastnamemsg.style.color = "red";
        return false;
    }
    else {
        lastnamemsg.innerHTML = "";
        return true;
    }
}
function citychack() {
    var city = document.getElementById("city").value;
    var citymsg = document.getElementById("citymsg");
    if (city == "") {
        citymsg.innerHTML = "You must enter your city";
        citymsg.style.color = "red";
        return false

    }
    else {
        citymsg.innerHTML = "";
        return true
    }


}
function phonechack() {
    var phone = document.getElementById("phone").value;
    var phonemsg = document.getElementById("phonemsg");
    if (phone == "") {
        phonemsg.innerHTML = "You must eneter your phone number";
        phonemsg.style.color = "red";
        return false

    }
    var phonenumber = /^0{1}(2|3|4|6|8|9|5[2-8]|73)-[1-9]\d{6}$/;
    if (!phonenumber.test(phone)) {
        phonemsg.innerHTML = "You must enter a valid Phone Number";
        phonemsg.style.color = "red";
        return false;

    }
    else {
        phonemsg.innerHTML = "";
        return true;
    }
}
function genderchack() {
    var male = document.getElementById("male").checked;
    var female = document.getElementById("female").checked;
    var other = document.getElementById("other").checked;
    var gendermsg = document.getElementById("gendermsg");

    if (male == false && female == false && other == false) {
        gendermsg.innerHTML = "You must enter your gender";
        gendermsg.style.color = "red";
        return false

    }

    gendermsg.innerHTML = ""
    return true



}
function datetimechack() {
    var datetime = document.getElementById("date").value;
    var datetimemsg = document.getElementById("datemsg");

    if (datetime == "") {
        datetimemsg.innerHTML = "You must enter your Birthdate";
        datetimemsg.style.color = "red";
        return false;
    } else {
        datetimemsg.innerHTML = "";
        return true;
    }
}
function passanswerchack() {
    var passanswer = document.getElementById("passanswer1").value;
    var passanswermsg = document.getElementById("passanswermsg1");

    if (passanswer == "") {
        passanswermsg.innerHTML = "You must enter the answer";
        passanswermsg.style.color = "red";
        return false;
    }
    else {
        passanswermsg.innerHTML = "";
        return true;
    }
}
function passanswer1selchack() {
    var passanswer1sel = document.getElementById("Password Recovery Questions1").value;
    var passanswer1selmsg = document.getElementById("passanswerselectmsg");

    if (passanswer1sel == 0) {
        passanswer1selmsg.innerHTML = "You must select 1 question";
        passanswer1selmsg.style.color = "red";
        return false;
    } else {
        passanswer1selmsg.innerHTML = "";
        return true;
    }
}
function passanswerchack2() {
    var passanswer2 = document.getElementById("passanswer2").value;
    var passanswermsg2 = document.getElementById("passanswermsg2");

    if (passanswer2 == "") {
        passanswermsg2.innerHTML = "You must enter the answer";
        passanswermsg2.style.color = "red";
        return false;
    }
    else {
        passanswermsg2.innerHTML = "";
        return true;
    }
}
function passanswer1selchack2() {
    var passanswer1sel2 = document.getElementById("Password Recovery Questions2").value;
    var passanswer1selmsg2 = document.getElementById("passanswerselectmsg2");

    if (passanswer1sel2 == 0) {
        passanswer1selmsg2.innerHTML = "You must select 1 question";
        passanswer1selmsg2.style.color = "red";
        return false;
    } else {
        passanswer1selmsg2.innerHTML = "";
        return true;
    }
}
function isLetter(ch) {
    if ((ch >= "a" && ch <= "z") || (ch >= "A" && ch <= "Z"))
        return true;
    else
        return false;
}

function isDigit(ch) {
    if (ch >= "0" && ch <= "9")
        return true;
    return false;
}









//function validate() {
//    var res = true;
//    res = usernamechack() && res;
//    res = Passwordchack() && res;
//    res = Passwordvchack() && res;
//    res = Emailchack() && res;
//    res = namechack() && res;
//    res = lastnamechack() && res;
//    res = citychack() && res;
//    res = phonechack() && res;
//    res = genderchack() && res;
//    return res;
//}
////function resetForm() {
//    var usernamemsg = document.getElementById("userNamemsg");
//    var passwordmsg = document.getElementById("passwordmsg");
//    var Passwordmsgv = document.getElementById("Passwordmsgv");
//    var emailmsg = document.getElementById("emailmsg");
//    var namemsg = document.getElementById("namemsg");
//    var lastnamemsg = document.getElementById("lastnamemsg");
//    var citymsg = document.getElementById("citymsg");
//    var phonemsg = document.getElementById("phonemsg");
//    var gendermsg = document.getElementById("gendermsg");

//    usernamemsg.innerHTML = "";
//    passwordmsg.innerHTML = "";
//    Passwordmsgv.innerHTML = "";
//    emailmsg.innerHTML = "";
//    namemsg.innerHTML = "";
//    lastnamemsg.innerHTML = "";
//    citymsg.innerHTML = "";
//    phonemsg.innerHTML = "";
//    gendermsg.innerHTML = "";
//}




//function usernamechack() {
//    var username = document.getElementById("userName").value;
//    var usernamemsg = document.getElementById("userNamemsg");
//    if (username == "") {
//        usernamemsg.innerHTML = "עליך להכניס שם משתמש";
//        usernamemsg.style.color = "red";
//        return false

//    }
//    else {
//        usernamemsg.innerHTML = "";
//        return true
//    }

//}
//function Passwordchack() {
//    var password = document.getElementById("pass").value;
//    var passwordmsg = document.getElementById("passwordmsg");
//    if (password == "") {
//        passwordmsg.innerHTML = "עליך להכניס סיסמא";
//        passwordmsg.style.color = "red";
//        return false

//    }
//    else {
//        passwordmsg.innerHTML = "";
//        return true
//    }


//}
//function Passwordvchack() {
//    var Passwordv = document.getElementById("Passv").value;
//    var Passwordmsgv = document.getElementById("Passwordmsgv");
//    if (Passwordv == "") {
//        Passwordmsgv.innerHTML = " עליך להכניס סיסמא עוד פעם";
//        Passwordmsgv.style.color = "red";
//        return false

//    }
//    else {
//        Passwordmsgv.innerHTML = "";
//        return true
//    }


//}
////function Emailchack() {
//    var emailAddress = document.getElementById("email").value;
//    var emailmsg = document.getElementById("emailmsg");
//    if (emailAddress == "") {
//        emailmsg.innerHTML = " עליך להכניס אימייל";
//        emailmsg.style.color = "red";
//        return false

//    }
//    else {
//        emailmsg.innerHTML = "";
//        return true
//    }


//}
//function namechack() {
//    var name = document.getElementById("name").value;
//    var namemsg = document.getElementById("namemsg");
//    if (name == "") {
//        namemsg.innerHTML = " עליך להכניס שם";
//        namemsg.style.color = "red";
//        return false

//    }
//    else {
//        namemsg.innerHTML = "";
//        return true
//    }


//}
//function lastnamechack() {
//    var lastname = document.getElementById("lastname").value;
//    var lastnamemsg = document.getElementById("lastnamemsg");
//    if (lastname == "") {
//        lastnamemsg.innerHTML = "  עליך להכניס שם משפחה";
//        lastnamemsg.style.color = "red";
//        return false

//    }
//    else {
//        lastnamemsg.innerHTML = "";
//        return true
//    }


//}
//function citychack() {
//    var city = document.getElementById("city").value;
//    var citymsg = document.getElementById("citymsg");
//    if (city == "") {
//        citymsg.innerHTML = " עליך להכניס את עירך";
//        citymsg.style.color = "red";
//        return false

//    }
//    else {
//        citymsg.innerHTML = "";
//        return true
//    }


//}
//function phonechack() {
//    var phone = document.getElementById("phone").value;
//    var phonemsg = document.getElementById("phonemsg");
//    if (phone == "") {
//        phonemsg.innerHTML = " עליך להכניס את מספר הטלפון שלך";
//        phonemsg.style.color = "red";
//        return false

//    }
//    else {
//        phonemsg.innerHTML = "";
//        return true
//    }


//}








//function genderchack() {
//    var male = document.getElementById("male").checked;
//    var female = document.getElementById("female").checked;
//    var other = document.getElementById("other").checked;
//    var gendermsg = document.getElementById("gendermsg");

//    if (male == false && female == false && other == false) {
//        gendermsg.innerHTML = "עליך להכניס מגדר";
//        gendermsg.style.color = "red";
//        return false

//    }

//    gendermsg.innerHTML = ""
//    return true



//}
//function birthchack() {
//    var date = document.getElementById("date").value;
//    var datemsg = document.getElementById("datemsg");
//    if (date == "") {
//        datemsg.innerHTML = " עליך להכניס התאריך יום הולדת שלך";
//        dTEmsg.style.color = "red";
//        return false

//    }
//    else {
//        datemsg.innerHTML = "";
//        return true
//    }


//}