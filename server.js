const express = require("express");
const bodyParser = require('body-parser');
const app = express();
const port = 8012;
const routerLogin = require('./routes/loginRouter');
const routerDon = require('./routes/donRouter')
const routerLop = require('./routes/lopRouter')
const routerThoiHan = require('./routes/thoihanRouter')

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use('/api/login', routerLogin)
app.use('/api/don', routerDon)
app.use('/api/lop', routerLop)
app.use('/api/setthoihan', routerThoiHan)

/* route to handle login and registration */
// app.post('/api/login', authenticateController.authenticate);
app.listen(8012, () => {
    console.log(`Server at http://localhost:${port}`)
});