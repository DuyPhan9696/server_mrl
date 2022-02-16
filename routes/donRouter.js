const express = require("express");
const donsvController = require('../controller/donsvController');
const themdonController = require('../controller/themdonController')
const suadonController = require('../controller/suadonController')
const { post } = require("./loginRouter");

let router = express.Router()

// post id req donsv
router.post('/donsv', donsvController.donsv)

router.post('/themdon', themdonController.themdon)

router.post('/suadon', suadonController.suadon)
module.exports = router;