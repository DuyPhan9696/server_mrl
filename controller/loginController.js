var connection = require('../dbConnection/dbConnection');

module.exports.authenticate = function (req, res) {
    var email = req.body.email
    var password = req.body.password;
    connection.query('SELECT * FROM sinhvien WHERE email = ?', [email], function (error, results, fields) {
        if (error) {
            res.json({
                status: false,
                message: 'there are some error with query'
            })
        } else {
            // for (let i = 0; i < results.length; i++) {
            //     if (results[i] == email) {
            //         if (password == results[i].password) {
            //             res.json({
            //                 status: true,
            //                 message: 'successfully authenticated'
            //             })
            //         } else {
            //             res.json({
            //                 status: false,
            //                 message: "Email and password does not match"
            //             })
            //         }
            //     }
            //     else {
            //         res.json({
            //             status: false,
            //             message: "Email does not exits"
            //         });
            //     }
            // }

            if (results.length > 0) {
                if (password == results[0].password) {
                    res.json({
                        status: true,
                        message: 'successfully authenticated'
                    })
                } else {
                    res.json({
                        status: false,
                        message: "Email and password does not match"
                    });
                }

            }
            else {
                res.json({
                    status: false,
                    message: "Email does not exits"
                });
            }
        }
    });
}