

var express = require('express');
var router = express.Router();
var db = require('../db');

//Route to display messages

router.post('/getmessage', function(req,res){
    
    var poster = req.body.message_name;
    var query = "SELECT * FROM MESSAGES WHERE PostName = '" + poster + "'";

  db.query(query, (error, result, fields) => {
    if (error){
      res.status(500).send(error);
    }
      var deleteMessageHTML = "<html><head><title>DeleteMessages</title><link rel='stylesheet' href='/../public/stylesheets/style.css'></head><h1>Select messages to delete:</h1><form id = 'deleteMessageForm' name = 'deleteMessageForm' method = 'post' action ='http://localhost:3000/api/v1/delete'>";
      var finalMess = result[0]["Message"];
      var index = result.length;
      var i;
      for(i = 0; i < index; i++){
          var PK = result[i]["MessageID"];
          var message = result[i]["Message"];
          var newBox = "<input id = '" + PK + "' name = '" + PK + "' type = 'checkbox'>" + message + "<br>";
          console.log(newBox);
          deleteMessageHTML = deleteMessageHTML + newBox;
      }

      deleteMessageHTML = deleteMessageHTML + "<br><input id = 'delSubmit' type = 'submit' value = 'DeleteMessages'></form></html>"
      res.send(deleteMessageHTML);
  });
    
});

//Route to delete messages

router.post('/', function(req,res){
    
  var messageList = req.body;
  var keyList = Object.keys(messageList);
  var listLength = keyList.length;
  var inList = "(";
  var i;
  for(i = 0; i < listLength; i++){
      if(i != listLength - 1){
        var numKey = parseInt(keyList[i]);
        inList = inList + numKey + ", ";
      }else{
        var numKey = parseInt(keyList[i]);
        inList = inList + numKey; 
      } 
  }
  inList = inList + ")";
    
  var query = "DELETE FROM MESSAGES WHERE MessageID IN " + inList; 

  db.query(query, (error, result, fields) => {
    if (error){
      res.status(500).send(error);
    }
    res.status(201).send('record(s) deleted');
  });
  
});



module.exports = router;


