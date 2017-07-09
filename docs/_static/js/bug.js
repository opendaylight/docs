console.log(window.location.href);

var baseUrl = "https://jira.opnfv.org/rest";
var authUrl = "/auth/1/session";
var issueUrl = "/api/2/issue";

var docsProjectID = "10309";
var issueTypeID = "4"; // for "Improvement"
var priorityTypeID = "5"; // for "Trivial"
var versionId = "";

var username = "";
var sessionCookie = "";


function toggleLoginForm(s, b) {
    var h;
    var jira_form = document.getElementById("jira-form");

    h = (s == "show") ? "hide":"show";
    jira_form.classList.toggle(s, b);
    jira_form.classList.toggle(h, !b);
}


function toggleFeedbackForm(s, b) {
    var h;
    var feedback_form = document.getElementById("feedback-form");

    h = (s == "show") ? "hide":"show";
    feedback_form.classList.toggle(s, b);
    feedback_form.classList.toggle(h, !b);
}


function hideFeedbackButton() {
    document.getElementById("bug-form").style.display = 'block';
    document.getElementById("give-feedback-button").style.display = 'none';
}


function showFeedbackButton() {
    document.getElementById("bug-form").style.display = 'none';
    document.getElementById("give-feedback-button").style.display = 'block';
    toggleFeedbackForm("hide", true);
    toggleLoginForm("hide", true);
}


function giveFeedback() {
    if (isLoggedIn()) {
        toggleFeedbackForm("show", true);
        toggleLoginForm("hide", true);
    } else {
        toggleFeedbackForm("hide", true);
        toggleLoginForm("show", true);
    }
    hideFeedbackButton();
}


function isLoggedInAPI() {

    var settings = {
        "async": true,
        "crossDomain": true,
        "url": baseUrl + authUrl,
        "method": "GET",
        "headers": {}
    }

    $.ajax(settings).done(function (data, statusText) {
        console.log(data);
        if (statusText == "success") {
            username = data.name;
            return true;
        } else {
            return false;
        }
    })
}


function isLoggedIn() {
    var logged_in = false;
    console.log('checking login');
    return isLoggedInAPI();
}


function loginAPI(usr, psw) {

    var settings = {
        "async": true,
        "crossDomain": true,
        "url": baseUrl + authUrl,
        "method": "POST",
        "headers": {
            "content-type": "application/json"
        },
        "processData": false,
        "data": {
            "username": usr,
            "password": psw
        }
    }

    $.ajax(settings).done(function (data, statusText) {
        console.log(data);
        if (statusText == "success") {
            sessionCookie = data.session.value;
            username = usr;
            return true;
        } else {
            return false;
        }
    })
}


function login() {

    var usr = $('#usr').val();
    var psw = $('#psw').val();

    console.log(usr);
    console.log(psw);

    if (usr && psw && loginAPI(usr, psw)) {
        toggleFeedbackForm("show", true);
        toggleLoginForm("hide", true);
    } else {
        alert("Invalid Credentials. Try again.")
    }
}


function createIssueAPI(summary, description) {

    var settings = {
        "async": true,
        "crossDomain": true,
        "url": baseUrl + issueUrl,
        "method": "POST",
        "headers": {
            "content-type": "application/json"
        },
        "processData": false,
        "data": {
            "fields" : {
                "project":{
                    "id": docsProjectID
                },
                "summary": summary,
                "issuetype":{
                    "id": issueTypeID
                },
                "priority":{
                    "id": priorityTypeID
                },
                "labels":[
                    "website"
                ],
                "versions": [
                    {
                        "id": versionId
                    }
                ],
                "description": description
            }
        }
    }

    $.ajax(settings).done(function (data, statusText) {
        console.log(response);
        if (statusText == "success") {
            return true;
        } else {
            return false;
        }
    });
}


function createIssue(argument) {

    var smry = $('#smry').val();
    var desc = $('#desc').val();

    desc += "\n\n Reported at: " + window.location.href;

    console.log(smry);
    console.log(desc);

    if (smry && desc && createIssueAPI(smry, desc)) {
        alert("Thanks for feedback!")
        showFeedbackButton();
    } else {
        if (!smry) {
            alert("Summary cannot be empty");
        }
        else {
            alert("Unknown Error Occurred. Feedback not submitted");
        }
    }
}
