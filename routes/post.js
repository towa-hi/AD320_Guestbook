
var express = require('express');
var router = express.Router();
var db = require('../db');

router.post('/', function(req,res){
  var dt = new Date();
  var query = "INSERT INTO messages (PostName, PostDate, Email, Message)" + "VALUES ( ?, ?, ?, ?);"
  var queryParams = [
    req.body.name_field,
    dt.getTime() / 1000,  // returns time in seconds since 1970/1/1
    req.body.email_field,
    req.body.message
  ];

  var testDate = dt.getTime() / 1000;
	
  db.query(query, queryParams, (error, result, fields) => {
    if (error){
      res.status(500).send(error);
    }
    res.status(201).send('record added');
  });
  
});


module.exports = router;

