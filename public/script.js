//This runs when the page loads. right now it gets all the data from the api, generates a page and then inserts it into index.html #display div

var currentPage = 0;
var maxPages = 10;
var lastPage = 0;
var commentsPerPage = 6;
var commentArray;

var enablePostName = 1;
var enablePostEmail = 1;
var displayPostName = 1;
var displayPostEmail = 1;
var displayPostDate = 1;
var defaultCommentsPerPage;
var defaultMaxPages;

$(document).ready(function(){
	$.getJSON("http://localhost:3000/api/v1/comments/all", (result)=>{
		commentArray =  result;
		lastPage = Math.round(commentArray.length / commentsPerPage) - 1;
		drawPage();
	});
	hideFields();
});

function drawPage() {
	var pageHTML = generatePage();
	$("#display").html(pageHTML);
	
}

function hideFields() {
	if (enablePostName === 0) {
		$('#input-container-name').hide();
	}
	if (enablePostEmail === 0) {
		$('#input-container-email').hide();
	}
}
//Function takes a database array and returns the page with the appropriate contents. pagination should go here.
function generatePage() {
	var pageHTML = "";
	for (count = currentPage * commentsPerPage; count < (currentPage * commentsPerPage) + commentsPerPage; count++) {
		if (count < commentArray.length){
			var comment = commentArray[count];
			var commentHTML = commentToHTML(comment);
			pageHTML += commentHTML;
		}
	}
	return pageHTML;
}

function commentToHTML(comment) {
	var commentHTML = "<div class='message-container'><div id='title-container'>";
	if (displayPostEmail == 1) {
		commentHTML += "<div id='name-linked'><a href='mailto:" + comment.Email + "'>";
	} else {
		commentHTML += "<div id='name-linked'>";
	}
	if (displayPostName == 1) {
		commentHTML += comment.PostName;
	} else if (displayPostName == 0 || comment.PostName === null){
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
	var a = new Date(timestamp*1000);
	var year = a.getFullYear();
	var month = months[a.getMonth()];
	var date = a.getDate();
	var time = month + ' ' + date + ' ' + year;
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

//Kyle's char count function
function zeroCount(){
	maxChar = document.getElementById("message-style").maxLength;
	document.getElementById('counter_div').innerHTML = '0/'+maxChar;
}

function counter(msg){
	document.getElementById('counter_div').innerHTML = msg.value.length+'/'+maxChar;
	if (msg.value.length == maxChar) {
		document.getElementById('counter_div').style.color = "Red";
	} else {
		document.getElementById('counter_div').style.color = "";
	}
}

function blankStatus() {
    document.getElementById('status_container').innerHTML = "";
}