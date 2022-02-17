const express = require("express");
const lopController = require('../controller/sinhvien/lopController');
const { post } = require("./loginRouter");

let router = express.Router()

// post id req donsv
router.post('/lopinfo', lopController.lop)

module.exports = router;