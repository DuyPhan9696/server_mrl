const express = require("express")
const loginSVController = require('../controller/sinhvien/loginSVController')
const loginGVController = require('../controller/giaovu/loginGVController')
let router = express.Router()

// post req loginsv
router.post('/loginsv', loginSVController.authenticate)

//post req logingv
router.post('/logingv', loginGVController.authenticate)

module.exports = router;