var express = require('express');
var router = express.Router();
var db = require('../db');

router.post('/', function(req,res){
	var pref = [
		req.body.name_post,
		req.body.email_post,
		req.body.message_post,
		req.body.date_post,
		req.body.name_input,
		req.body.email_input,
		req.body.comment1,
		req.body.comment2,
	];
	for(var i =0; i<pref.length; i++){
		if(pref[i]== null){
			pref[i]=0;
		}
	}
	var query =`UPDATE PREFERENCES SET PostName = ?, PostEmail = ?, PostMessage = ?, DisplayDate = ?, DisplayName = ?, DisplayEmail= ?, PageResults = ?, TotalResults = ? WHERE PreferenceID = 1`;
	var queryParams = pref;
	db.query(query, queryParams, (error, result, fields) => {
		if (error){
			res.send(error);
		} else {
			res.status(201).send('preferences updated');
		}
	});
});

module.exports = router;



