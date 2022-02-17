const express = require("express");
const donsvController = require('../controller/sinhvien/donsvController');
const themdonController = require('../controller/sinhvien/themdonController')
const suadonController = require('../controller/sinhvien/suadonController')
const xoadonController = require('../controller/sinhvien/xoadonController')
const { post } = require("./loginRouter");

let router = express.Router()

// post id req donsv
router.post('/donsv', donsvController.donsv)

router.post('/themdon', themdonController.themdon)

router.post('/suadon', suadonController.suadon)

router.post('/xoadon', xoadonController.xoadon)

module.exports = router;