//This script runs when the page loads on client side. it gets all the data from the api, generates a page and then inserts it into index.html #display div

var currentPage = 0;
var maxPages = 10;
var lastPage = 0;
var commentsPerPage;

//holds all the comments served by the api on load
var commentArray;

//holds the maximum number charaters allowed in message text area
const maxChar = 400;
//number at which character count turns red
const redCount = 10;
const counterOffset = "1em";
const scrollbarOffset = "1.8em";
const alertColor = "red";
var messageWidth;

//these variables are set by setPrefs()
var enablePostName;
var enablePostEmail;
var displayPostName;
var displayPostEmail;
var displayPostDate;
var defaultCommentsPerPage;
var defaultMaxPages;

setPrefs();

//fetch comments after page is ready
$(document).ready(function(){
	getMessages();
	addSubmitClick()
});

//get all messages from db
function getMessages() {
	$.getJSON("http://localhost:3000/api/v1/comments/all", (result)=>{
		commentArray =  result;
		lastPage = Math.round(commentArray.length / commentsPerPage) - 1;
		drawPage();
	});
}

//set preferences before document ready load
function setPrefs() {
	$.getJSON("http://localhost:3000/api/v1/preferences", (result)=>{
		preferences = result[0];
		enablePostName = preferences.PostName;
		enablePostEmail = preferences.PostEmail;
		displayPostName = preferences.DisplayName;
		displayPostEmail = preferences.DisplayEmail;
		displayPostDate = preferences.DisplayDate;
		defaultCommentsPerPage = preferences.PageResults;
		commentsPerPage = defaultCommentsPerPage;
		defaultMaxPages = preferences.TotalResults / preferences.PageResults;
		hideFields();
	});
}

//calls generatePage() and inserts it into #display
function drawPage() {
	var pageHTML = generatePage();
	$("#display").html(pageHTML);
}

//runs upon document load. hides irrelevant UI elements depending on local preferences
function hideFields() {

	if (enablePostName == 0) {

		$('#input-container-name').hide();
	}
	if (enablePostEmail == 0) {

		$('#input-container-email').hide();
	}
}

//takes a database array and returns the page with the appropriate contents.
function generatePage() {
	var pageHTML = "";
	//from comment at start of current page to comment at end of current page...
	for (count = currentPage * commentsPerPage; count < (currentPage * commentsPerPage) + commentsPerPage; count++) {
		if (count < commentArray.length){
			var comment = commentArray[count];
			var commentHTML = commentToHTML(comment);
			pageHTML += commentHTML;
		}
	}
	return pageHTML;
}

//this function takes all the local preferences into account and creates a html string out a comment object.
function commentToHTML(comment) {
	var commentHTML = "<div class='message-container'><div id='title-container'>";
	if (displayPostEmail == 1) {
		commentHTML += "<div id='name-linked'><a href='mailto:" + comment.Email + "'>";
	} else {
		commentHTML += "<div id='name-linked'>";
	}
	if (displayPostName == 1) {
		if (comment.PostName === "") {
			commentHTML += "Anonymous";
		} else {
			commentHTML += comment.PostName;
		}
	} else if (displayPostName == 0){
		commentHTML += "Anonymous";
	}
	if (displayPostEmail == 1) {
		commentHTML += "</a>";
	}
	commentHTML += "</div>";
	if (displayPostDate == 1){
		commentHTML += "<div id='date'>" + convertFromUnixTimestamp(comment.PostDate) + "</div>";
	}
	commentHTML += "</div><hr><div id='message-content'>" + comment.Message + "</div></div>"
	return commentHTML;
}

function convertFromUnixTimestamp(timestamp) {
	var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
	var a = new Date(timestamp * 1000);
	var year = a.getFullYear();
	var month = months[a.getMonth()];
	var date = a.getDate();
	var hour = 0 + a.getHours();
	var minutes = 0 + a.getMinutes();
	var seconds = 0 + a.getSeconds();
	if (seconds < 10) {
		seconds = "0" + seconds.toString();
	}
	var time = month + ' ' + date + ' ' + year + " " + hour + ":" + minutes + ":" + seconds;
	return time;
}

function backPage() {
	if (currentPage > 0) {
		currentPage--;
		drawPage();
	} else {
		console.log("can't execute backPage(). Already on first page!");
	}
}

function nextPage() {
	if (currentPage < lastPage) {
		currentPage++;
		drawPage();
	} else {
		console.log("can't execute nextPage(). Already on last page!");
	}
}
//Declares variables for holding element values
var messageStyle;
var counterDiv;
//Kyle's reset character count function called on onload event
function zeroCount(){
	//assigns elements to the variables
	messageStyle = document.getElementById("message-style");
	counterDiv = document.getElementById("counter_div");
	//initial text width of textarea
	messageWidth = document.getElementById("message-style").scrollWidth;
	messageStyle.maxLength = maxChar;
	var size = messageStyle.value.length;
	counterDiv.innerHTML = maxChar - size;
	counterDiv.style.color = "";
	setCounterOffset();
}

//Kyle's char count function
function counter(msg){
	setCounterOffset();
	counterDiv.innerHTML = maxChar - msg.value.length;
	if (msg.value.length >= maxChar - redCount) {
		counterDiv.style.color = alertColor;
		if (msg.value.length > maxChar) {
			messageStyle.innerHTML = msg.value.trim();
			counterDiv.innerHTML = maxChar - msg.value.length;
		} // If statement protects against Edge "Enter" key defect at maxChar
	} else {
		counterDiv.style.color = "";
	}
}

function blankStatus() {
    document.getElementById('status_container').innerHTML = "";
}

function addSubmitClick() {
	$("#submit").click(function(e) {
		e.preventDefault();
		$.post('/api/v1/post', $("#top-box").serialize(), function(response) {
			getMessages();
			clearForm();
			zeroCount();
		});
	});
}

function clearForm() {
	($(".clear")).val("");
}

function setCounterOffset() {
	if(messageWidth > messageStyle.scrollWidth){
		counterDiv.style.marginRight = scrollbarOffset;
	} else {
		counterDiv.style.marginRight = counterOffset;
	}
}
