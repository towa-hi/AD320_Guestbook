//load dependencies
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var commentsRouter = require('./routes/comments');

//initialize app
var app = express();
//set paths
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
//set api url
app.use('/api/v1/comments', commentsRouter);


module.exports = app;
