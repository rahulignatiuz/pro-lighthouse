//import mysql from "mysql";
var mysql = require("mysql");
 
const pool = mysql.createPool({
            connectionLimit : 10,
            host     : 'localhost',
            user     : 'root',
            password : 'root',
            database : 'lighthouse',
            debug    : false 
});                    
 
function executeQuery(sql, callback) {
    pool.getConnection((err,connection) => {
        if(err) {
            return callback(err, null);
        } else {
            if(connection) {
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
    console.log(sql);    
    executeQuery(sql,function(err, data) {
        if(err) {
            console.log(err)
            return callback(err);
        }       
        callback(null, data);
    });
}

var db = {
    query: query
}

module.exports = db;
