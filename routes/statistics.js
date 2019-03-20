var express = require('express');
var router = express.Router();
var db = require('../db');

router.get('/', function(req, res) {
	var query = "SELECT from_unixtime(PostDate, '%d') as day, Count(from_unixtime(PostDate, '%d')) as dayCount FROM MESSAGES Group by from_unixtime(PostDate, '%d') ORDER BY day asc";
	db.query(query, (error, result, fields) => {
		var arr = new Array();
		if(error) {
			res.send(error);
		}
		else {
			res.send(result);
		}
		console.log(result);
	});
 });

module.exports = router;


