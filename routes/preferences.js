var express = require('express');
var router = express.Router();
var db = require('../db');

router.get('/', function(req, res, next){
	db.query("SELECT * FROM PREFERENCES", (error, result, fields) => {
		if (error) {
			res.send(error);
		} else {
			res.send(result);
		}
	});
});

module.exports = router;

