const express = require("express");
const bodyParser = require('body-parser');
const app = express();
const port = 8012;
const routerLogin = require('./routes/loginRouter');
const routerDon = require('./routes/donRouter')

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use('/api/login', routerLogin)
app.use('/api/don', routerDon)

/* route to handle login and registration */
// app.post('/api/login', authenticateController.authenticate);
app.listen(8012, () => {
    console.log(`Server at http://localhost:${port}`)
});