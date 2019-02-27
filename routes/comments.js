var express = require('express');
var router = express.Router();
var db = require('../db');

router.get('/all', function(req, res, next) {
  db.query("select * from messages order by PostDate DESC", (error, result, fields) => {
    if (error) {
      res.status(500).send(error);
    }
    res.send(result);
  });
});

module.exports = router;
