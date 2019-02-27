
$(document).ready(function(){
	$.getJSON("http://localhost:3000/api/v1/comments/all", (result)=>{
		var pageHTML = generatePage(result);
		$("#display").append(pageHTML);
	});
});

function generatePage(commentArray) {
	var pageHTML = "";
	for (count = 0; count < commentArray.length; count++) {
		var comment = commentArray[count];
		var commentHTML = commentToHTML(comment);
		pageHTML += commentHTML;
	}
	return pageHTML;
}

function commentToHTML(comment) {
	var commentHTML = "<div class='message-container'><div id='title-container'><div id='name-linked'><a href='mailto:" + comment.Email + "'>" + comment.PostName + "</a></div><div id='date'>" + convertFromUnixTimestamp(comment.PostDate) + "</div></div><hr><div id='message-content'>" + comment.Message + "</div></div>";
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