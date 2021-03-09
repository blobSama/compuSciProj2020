// JavaScript source file
function validateForm() {
    if (document.getElementById("noAccnt").innerHTML == "") {
        if (document.getElementById("mailWrng").innerHTML == "") {
            if (document.getElementById("phoneWrng").innerHTML == "") {
                if (document.getElementById("costWrng").innerHTML == "") {
                    if (document.getElementById("amntWrng").innerHTML == "") {
                        if (document.getElementById("ftrsWrng").innerHTML == "") {
                            if (document.getElementById("enqWrng").innerText == "") {
                                if (document.getElementById("enqWrng").innerHTML == "") {
                                    if (document.getElementById("linkWrng").innerText == "") {
                                        document.getElementById("submit").disabled = false;
                                        document.getElementById("submitWrng").innerHTML = "Ready to submit!";
                                    }
                                    else {
                                        document.getElementById("submitWrng").innerHTML = "Please check your input.";
                                    }
                                }
                                else {
                                    document.getElementById("submitWrng").innerHTML = "Please check your input.";
                                }
                            }
                            else {
                                document.getElementById("submitWrng").innerHTML = "Please check your input.";
                            }
                        }
                        else {
                            document.getElementById("submitWrng").innerHTML = "Please check your input.";
                        }
                    }
                    else {
                        document.getElementById("submitWrng").innerHTML = "Please check your input.";
                    }
                }
                else {
                    document.getElementById("submitWrng").innerHTML = "Please check your input.";
                }
            }
            else {
                document.getElementById("submitWrng").innerHTML = "Please check your input.";
            }
        }
        else {
            document.getElementById("submitWrng").innerHTML = "Please check your input.";
        }
    }
    else {
        document.getElementById("submitWrng").innerHTML = "Please check your input."
    }
}
/*
function removeMsg() {
    document.getElementById("submitWrng").innerHTML = ""
}*/

function hello() {
    document.getElementById("costWrng").innerHTML = "red";
}
function validateImage() {
    var url = document.getElementById("watchPic").value;
    if (url.match(/jpg$/) == null) {
        document.getElementById("linkWrng").innerText = "Please enter a jpg format picture.";
        document.getElementById("watchPic").value = "";
    }
    else {
        document.getElementById("linkWrng").innerText = "";
    }
}

function accntCheck() {
    if (document.getElementById('no').checked) {
        document.getElementById("noAccnt").innerHTML = "Please make an account before entering a watch";
        var radioButton = document.getElementById("no");
        radioButton.checked = false;
    }
    else {
        document.getElementById("noAccnt").innerHTML = "";
    }
}

function ftrsCheck() {
    if (document.getElementById("ftrs").value == "") {
        document.getElementById("ftrsWrng").innerHTML = "Please fill in features.";
    }
    else {
        document.getElementById("ftrsWrng").innerHTML = "";
    }
}

function checkType() {
    if (document.getElementById("enquiry").value == "Choose...") {
        document.getElementById("enqWrng").innerText = "Please choose a valid category.";
    }
    else {
        document.getElementById("enqWrng").innerText = "";
    }
}

function ValidateEmail() {
    var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    var inputText = document.getElementById("mail");
    if(inputText.value.match(mailformat)) {
        document.getElementById("mailWrng").innerHTML = "";
    }
    else {
        document.getElementById("mailWrng").innerHTML = "Please enter valid email address.";
        document.getElementById("mail").value = '';
    }
}

function ValidatePhone() {
    var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
    var inputtxt = document.getElementById("phone");
    if((inputtxt.value.match(phoneno))) {
        document.getElementById("phoneWrng").innerHTML = "";
    }
    else {
        document.getElementById("phoneWrng").innerHTML = "Please enter valid phone number.";
        document.getElementById("phone").value = '';
    }
}

function validateCost() {
    var num = document.getElementById("cost").value;
    if (num >= 1 && num <= 1500) {
        document.getElementById("costWrng").innerHTML = "";
    }
    else {
        document.getElementById("costWrng").innerHTML = "Please enter valid cost.";
        document.getElementById("cost").value = '';
    }
}

function validateAmnt() {
    var num = document.getElementById("amnt").value;
    if (num >= 0 && num <= 1000) {
        document.getElementById("amntWrng").innerHTML = "";
    }
    else {
        document.getElementById("amntWrng").innerHTML = "Please enter valid amount.";
        document.getElementById("amnt").value = '';
    }
}

function checkName(name) {
    var letters = /^[A-Za-z]+$/;
    if (!document.getElementById("fName").value.match(letters)) {
        document.getElementById("wrngName").innerText = "Please enter valid name";
        document.getElementById("fName").value = "";
        return false;
    }
    else {
        document.getElementById("wrngName").innerText = "";
        return true;
    }
}

function checkLName(name) {
    var letters = /^[A-Za-z]+$/;
    if (!document.getElementById("lName").value.match(letters)) {
        document.getElementById("wrngFmly").innerText = "Please enter valid surname";
        document.getElementById("lName").value = "";
        return false;
    }
    else {
        document.getElementById("wrngFmly").innerText = "";
        return true;
    }
}

function checkUMail() {
    var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    var inputText = document.getElementById("mail");
    if (!inputText.value.match(mailformat)) {
        document.getElementById("mailWrng").innerText = "Please enter valid email address.";
        document.getElementById("mail").value = "";
        return false;
    }
    else {
        document.getElementById("mailWrng").innerText = "";
        return true;
    }
}

function checkAge() {
    if (document.getElementById("age").value < 0) {
        document.getElementById("ageWrng").innerText = "Please enter valid age.";
        document.getElementById("age").value = "";
        return false;
    }
    else {
        document.getElementById("ageWrng").innerText = "";
        return true;
    }
}

function checkPass() {
    var passFormat = /^[a-zA-Z0-9.!@#$%^&*]$/;
    if (!document.getElementById("pass").value.match(passFormat)) {
        document.getElementById("passWrng").innerText = "Please enter valid password.";
        document.getElementById("pass").value = "";
        return false;
    }
    else {
        document.getElementById("passWrng").innerText = "";
        return true;
    }
}

function checkId() {
    if (isNaN(document.getElementById("Uid"))) {
        document.getElementById("idWrng").innerText = "Please enter valid ID.";
        document.getElementById("Uid").value = "";
        return false;
    }
    else {
        document.getElementById("idWrng").innerText = "";
        return true;
    }
}

function checkAll() {
    var id = checkId(), Lname = checkLName(), name = checkName(), UMail = checkUMail(), age = checkAge(), pass = checkPass();
    if (id&&Lname&&name&&UMail&&age&&pass) {
        document.getElementById.disabled = false;
    }
}