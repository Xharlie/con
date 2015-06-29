var express = require('express');
var router = express.Router();
var structure = require('./structure.js');
/* GET home page. */
router
    .get('/', function(req, res, next) {
        res.render(structure.mainPage);
    })
    //.get('/', function(req, res, next) {
    //    res.sendFile(structure.mainPage);
    //})
    //.get('/', function(req, res, next) {
    //    res.sendFile(structure.mainPage);
    //})
    //.get('/', function(req, res, next) {
    //    res.sendFile(structure.mainPage);
    //})
    //.get('/', function(req, res, next) {
    //    res.sendFile(structure.mainPage);
    //})
    //.get('/', function(req, res, next) {
    //    res.sendFile(structure.mainPage);
    //})

module.exports = router;
