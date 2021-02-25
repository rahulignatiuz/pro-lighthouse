//import mysql from "mysql";
var mysql = require("mysql");

const pool = mysql.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'lighthouse',
    debug: false,
    multipleStatements: true
});

function executeQuery(sql, callback) {
    pool.getConnection((err, connection) => {
        if (err) {
            return callback(err, null);
        } else {
            if (connection) {
                connection.query(sql, function (error, results, fields) {
                    connection.release();
                    if (error) {
                        return callback(error, null);
                    }
                    return callback(null, results);
                });
            }
        }
    });
}

function query(sql, callback) {
    console.log("+-+-+-+", sql);
    executeQuery(sql, function (err, result) {
      //  console.log("+-+-data+-result+", result);

      //  console.log("+-+-data+-+",result[0].affectedRows); 
        if (err) {
            console.log(err)
            return callback(err);
        } else {
            callback(null, result);
            // if (result[0].affectedRows && result[0].affectedRows > 0) {
            //    // let data = result;
            //     callback(null, result[1][0]);
            // } else {
            //    // let data = result[0];
            //     callback(null, result[0]);
            // }

        }

    });
}

var db = {
    query: query
}

module.exports = db;
