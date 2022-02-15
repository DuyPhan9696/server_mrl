const express = require("express");
const donsvController = require('../controller/donsvController');
const { post } = require("./loginRouter");

let router = express.Router()

// post id req donsv
router.post('/donsv', donsvController.donsv)

module.exports = router;