/**
 * Created by charlie on 6/28/15.
 */

var querystring = require('querystring');
var http = require('http');

function yunpianMsg(MsgString,phone){
    var postData = querystring.stringify({
        'apikey': '26b126ce6f0379478da7c98289ee9bf7',
        'text': MsgString,
        'mobile':phone
    });

    var options = {
        hostname: 'yunpian.com',
        port: 80,
        path: '/v1/sms/send.json',
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Content-Length': postData.length
        }
    };

    var req = http.request(options, function(res) {
        console.log('STATUS: ' + res.statusCode);
        console.log('HEADERS: ' + JSON.stringify(res.headers));
        res.setEncoding('utf8');
        res.on('data', function (chunk) {
            console.log('BODY: ' + chunk);
        });
    });

    req.on('error', function(e) {
        console.log('problem with request: ' + e.message);
    });

// write data to request body
    req.write(postData);
    req.end();
}

module.exports.yunpianMsg = yunpianMsg;