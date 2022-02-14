const express = require("express");
const bodyParser = require('body-parser');
const app = express();
const port = 8012;
const routerLogin = require('./routes/loginRouter');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use('/api', routerLogin)

/* route to handle login and registration */
// app.post('/api/login', authenticateController.authenticate);
app.listen(8012, () => {
    console.log(`Server at http://localhost:${port}`)
});