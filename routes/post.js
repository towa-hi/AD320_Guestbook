//server side code for handling posting goes here
var express = require('express');
var router = express.Router();
var db = require('../db');

var dt = new Date();

router.post('/addMessage', function(req,res,next){
  var query = "INSERT INTO messages (PostName, PostDate, Email, Message)"
    +"VALUES ( ?, ?, ?, ?);"
  var queryParams = [
    req.body.name_field,
    dt.getTime() / 1000,  // returns time in seconds since 1970/1/1
    req.body.email_field,
    req.body.message
  ];

  db.query(query, queryParams, (error, result, fields) => {
    if (error){
      res.status(500).send(error);
    }
    res.status(201).send('record added');
    // location.href = 'https://www.quackit.com';
  });
});

module.exports = router;
