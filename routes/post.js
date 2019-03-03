//server side code for handling posting goes here
var app = require('../app');
var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: true });

app.get('/preferences', function(req,res){
	res.render('preferences', {qs: req.query});
});

app.post('/preferences',urlencodedParser, function(req,res){
	console.log(req.body);
	res.render('preferences', {qs: req.query});
});
