var express = require("express");
var bodyParser = require('body-parser');
var app = express();
var authenticateController = require('./controller/loginController');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
/* route to handle login and registration */
app.post('/api/login', authenticateController.authenticate);
app.listen(8012);