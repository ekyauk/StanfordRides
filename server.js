var express = require('express')
  , http = require('http')
  , path = require('path');

var app = express();
var server = http.createServer(app)

app.configure(function(){
  app.set('port', process.env.PORT || 8500);
  app.set('views', __dirname + '/views');
  app.set('view engine', 'jade');
  app.use(express.favicon());
  app.use(express.logger('dev'));
  app.use(express.bodyParser());
  app.use(express.methodOverride());
  app.use(express.static(path.join(__dirname)));
});

app.get('/', function (req, res) {
  res.render('index', { title:'index'})
})


server.listen(app.get('port'), function(){
  console.log("Express server listening on port " + app.get('port'));
});
