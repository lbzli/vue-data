'use strict'

const mysql = require('mysql')

const pool = mysql.createPool({
    host: '127.0.0.1',
    user: 'root',
    password: '123456',
    database: 'vcms'
})

exports.query = function() {
    let args = arguments

    let sqlStr = args[0]
    let params = []
    let callback

    if (args.length === 2 && typeof args[1] === 'function') {
        callback = args[1]
    } else if (args.length === 3 && Array.isArray(args[1]) && typeof args[2] === 'function') {
        params = args[1]
        callback = args[2]
    } else {
        throw new Error('参数个数不匹配')
    }
    console.log('传入的sql语句是：'+sqlStr)
    console.log('传入的参数是：')
    console.log(params)
    pool.getConnection(function (err, connection) {
        if (err) {
            callback(err)
        } 
        connection.query(sqlStr, params, function (err, rows) {
            if (err) {
                callback(err)
            }

            connection.release()
            callback.apply(null, arguments)
        })
    })
}

// pool.getConnection(function (err, connection) {
//     if (err) {
//         console.log('error')
//     }
//     connection.query('select * from news where id=?', ['1'], function (err, rows) {
//         if (err) {
//             console.log('error')
//         }

//         connection.release()
//         console.log(rows)
//     })
// })