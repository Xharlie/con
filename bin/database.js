/**
 * Created by charlie on 4/28/15.
 */
var mysql = require('mysql');
var mysqlPool  = mysql.createPool({
    connectionLimit : 10,
    host            : 'localhost',
    user            : 'miamia',
    password        : '^pantheo$',
    database        : 'Concubine',
    charset         : 'utf8_general_ci',
    timezone        : 'local'
});

exports.mysqlPool = mysqlPool;
