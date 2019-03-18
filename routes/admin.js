var express = require('express');
var router = express.Router();
var db = require('../db');

router.post('/', function(req,res){

	var pref = [
		req.body.name_post,
		req.body.email_post,
		req.body.date_display,
		req.body.name_display,
		req.body.email_display,
		req.body.comment1,
		req.body.comment2,
	];
	for(var i =0; i<pref.length; i++){
		if(pref[i]== null){
			pref[i]=0;
		}
	}
	var query =`UPDATE PREFERENCES SET PostName = ?, PostEmail = ?, PostMessage = 1, DisplayDate = ?, DisplayName = ?, DisplayEmail= ?, PageResults = ?, TotalResults = ? WHERE PreferenceID = 1;`;
	var queryParams = pref;
	db.query(query, queryParams, (error, result, fields) => {
		if (error){
			res.send(error);
		} else {
			console.log(query);
			console.log(queryParams);
			res.redirect('/admin.html');
		}
	});
});

module.exports = router;



