
var checkboxValues = JSON.parse(localStorage.getItem('checkboxValues')) || {}, 
$checkboxes = $("#admin-form2 :checkbox");

$checkboxes.on("change", function(){
	$checkboxes.each(function(){
		checkboxValues[this.id] = this.checked;
	});
	localStorage.setItem("checkboxValues", JSON.stringify(checkboxValues));
	console.log(checkboxValues);
});

// On page load
$.each(checkboxValues, function(key, value) {
	$("#" + key).prop('checked', value);
});



