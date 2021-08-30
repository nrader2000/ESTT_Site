var express = require('express');
var router = express.Router();

router.get('/playerguide',function(req,res,next){
    res.render('playerguide')
});

router.get('/craftguide',function(req, res, next){
    res.render('craftguide')
});

router.get('/vamplycanguide',function(req, res, next){
    res.render('vamplycanguide')
});

module.exports = router;