/**
 * Created by charlie on 4/28/15.
 */
var db = require("../bin/database.js");
var mysqlPool = db.mysqlPool;

mysqlPool.query('SELECT 1 + 1 AS solution', function(err, rows, fields) {
    if (err) throw err;
    console.log('The solution is: ', rows[0].solution);
});