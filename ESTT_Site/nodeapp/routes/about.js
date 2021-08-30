var express = require('express');
var router = express.Router();

/* Navigation */
router.get('/', function(req, res, next) {
    res.render('index');
});

router.get('/about', function(req, res, next) {
    res.render('about');
});

router.get('/playerguidenav',function(req, res, next){
    res.render('playerguidenav')
});

router.get('/database',function(req, res, next){
    res.render('database')
});

router.get('/resources',function(req, res, next){
    res.render('resources')
});

router.get('/news',function(req, res, next){
    res.render('news')
});

router.get('/contact',function(req, res, next){
    res.render('contact');
});

module.exports = router;