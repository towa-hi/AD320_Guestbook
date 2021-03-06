//load dependencies
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var bodyParser=require('body-parser');

var indexRouter = require('./routes/index');
var commentsRouter = require('./routes/comments');
var postRouter = require('./routes/post');
var prefRouter = require('./routes/preferences');
var adLoginRoute = require('./controllers/authenticate')
var adminPref = require('./routes/admin');
var statsRouter = require('./routes/statistics');


var delRouter = require('./routes/delete');

//initialize app
var app = express();
//set paths

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
//set api url
app.use('/api/v1/comments', commentsRouter);
app.use('/api/v1/post', postRouter);
app.use('/api/v1/preferences', prefRouter);

app.use('/api/v1/ad', adminPref);

app.use('/api/v1/delete', delRouter);
app.use('/api/v1/authenticate', adLoginRoute);
app.use('/api/v1/statistics', statsRouter);


module.exports = app;
