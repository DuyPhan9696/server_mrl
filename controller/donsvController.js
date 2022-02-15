const { off } = require('../dbConnection/dbConnection');
const connection = require('../dbConnection/dbConnection');

module.exports.donsv = (req, res) => {
    var id = req.body.id
    connection.query('SELECT * FROM don_mrl,lop,hocphan WHERE don_mrl.malop = lop.malop AND lop.mahocphan = hocphan.mahocphan'), [id], function (error, results, fields) {
        if (error) {
            res.json({
                status: false,
                message: 'there are some error with query'
            })
        } else {
            if (results.length > 0) {
                res.json({
                    status: true,
                    results
                })
            }
            else {
                res.json({
                    status: false,
                    message: "No students"
                })
            }
        }
    }
}
    // connection.query('SELECT * FROM don_mrl WHERE masinhvien = ?', [id], function (error, results, fields) {
    //     results.map((row) => {
    //         malopData.push(row.malop)
    //     })

    //     let mahocphanData = []
    //     for (let i = 0; i < malopData.length; i++) {
    //         connection.query('SELECT * FROM lop WHERE malop = ?', [malopData[i]], function (error, result, fields) {
    //             result.map((row1) => {
    //                 mahocphanData.push(row1.mahocphan)
    //             })
    //         })

    //     }
        // if (error) {
        //     res.json({
        //         status: false,
        //         message: 'there are some error with query'
        //     })
        // } else {
        //     if (results.length > 0) {
        //         res.json({
        //             status: true,
        //             results
        //         })
        //     }
        //     else {
        //         res.json({
        //             status: false,
        //             message: "No students"
        //         })
        //     }
        // }
    //}
   // )
//}