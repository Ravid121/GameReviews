function validate() {
    var res = true;
    res = passanswerchack() && res;
    res = passanswer1selchack() && res;
    res = passanswerchack2() && res;
    res = passanswer1selchack2() && res;
    return res;
}
function resetForm() {
    var passanswermsg = document.getElementById("passanswermsg1");
    var passanswer1selmsg = document.getElementById("passanswerselectmsg");
    var passanswermsg2 = document.getElementById("passanswermsg2");
    var passanswer1selmsg2 = document.getElementById("passanswerselectmsg2");
    passanswermsg.innerHTML = "";
    passanswer1selmsg.innerHTML = "";
    passanswermsg2.innerHTML = "";
    passanswer1selmsg2.innerHTML = "";
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