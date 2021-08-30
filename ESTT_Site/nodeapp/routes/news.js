var express = require('express');
var db = require('../database');
var bodyParser = require('express/node_modules/body-parser');
var router = express.Router();
const app = express()

app.use(express.json());
app.use(express.urlencoded());
var urlencodedParser = bodyParser.urlencoded({extended: false});
app.use(bodyParser.json());

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

router.post('/addemail',urlencodedParser,function(req,res,next){

    const email = req.body.email.toString();
    var sql = `INSERT INTO EMAILS (Email) VALUES ('${email}')`;
    db.query(sql,function(err,data){
        if (err) throw err;
            console.log("Email Added to DB!");
    });
    res.redirect('/news');
});

module.exports = router;