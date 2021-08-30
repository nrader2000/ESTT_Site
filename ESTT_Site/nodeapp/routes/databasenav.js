var express = require('express');
const { threadId, query } = require('../database');
var router = express.Router();
var db = require('../database');

/* Page Navigation */
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

/* Table Navigation */
router.get('/abilities',function(req,res,next){
    AbilityTypeID = parseInt(req.query.AbilityTypeID);
    var sql = 'SELECT * FROM ABILITIES WHERE AbilityTypeID = ?';
    db.query(sql,[AbilityTypeID],function(err,data,fields){
        if(err) throw err;
        res.render('abilities',{title:'Database - Abilities', abilitiesData: data});
    });
});

router.get('/alchemy',function(req,res,next){
    AlchemyTypeID = parseInt(req.query.AlchemyTypeID);
    var sql = 'SELECT * FROM ALCHEMY WHERE ATypeID = ?';
    db.query(sql,[AlchemyTypeID],function(err,data,fields){
        if(err) throw err;
        res.render('alchemy',{title:'Database - Alchemy', alchemyData: data});
    });
});

router.get('/armors',function(req,res,next){
    ArmorTypeID = parseInt(req.query.ArmorTypeID);
    var sql = 'SELECT * FROM ARMORS WHERE ArmorTypeID = ?';
    db.query(sql,[ArmorTypeID],function(err,data,fields){
        if(err) throw err;
        res.render('armors',{title:'Database - Armor', armorData: data});
    });
});

router.get('/boundweapons',function(req,res,next){
    var sql = 'SELECT * FROM BOUND_WEAPONS';
    db.query(sql,function(err,data,fields){
        if(err) throw err;
        res.render('boundweapons',{title:'Database - Bound Weapons', bweaponData: data});
    });
});

router.get('/clothes',function(req,res,next){
    var sql = 'SELECT * FROM CLOTHES';
    db.query(sql,function(err,data,fields){
        if(err) throw err;
        res.render('clothes',{title:'Database - Clothes', clothesData: data});
    });
});

router.get('/cookingrecipes',function(req,res,next){
    var sql = 'SELECT * FROM COOKING_RECIPES';
    db.query(sql,function(err,data,fields){
        if(err) throw err;
        res.render('cookingrecipes',{title:'Database - Cooking Recipes', cookingrecipeData: data});
    });
});

router.get('/debuffs', function(req, res, next) {
    DebuffTypeID = parseInt(req.query.DebuffTypeID);
    var sql = 'SELECT * FROM DEBUFFS WHERE DebuffTypeID = ?';
    db.query(sql,[DebuffTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('debuffs',{title:'Database - Debuffs', debuffData: data});
    });
});

router.get('/enchants', function(req, res, next) {
    EnchantTypeID = parseInt(req.query.EnchantTypeID);
    var sql = 'SELECT * FROM ENCHANTS WHERE EnchantTypeID = ?';
    db.query(sql,[EnchantTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('enchants',{title:'Database - Enchants', enchantData: data});
    });
});

router.get('/items', function(req, res, next) {
    FDTypeID = parseInt(req.query.FDTypeID);
    var sql = 'SELECT * FROM ITEMS ORDER BY ItemName ASC';
    db.query(sql,function(err,data,fields){
      if(err) throw err;
      res.render('items',{title:'Database - Items', itemData: data});
    });
});

router.get('/food-and-drink', function(req, res, next) {
    FDTypeID = parseInt(req.query.FDTypeID);
    var sql = 'SELECT * FROM FOOD_AND_DRINK WHERE FDTYPEID = ?';
    db.query(sql,[FDTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('food-and-drink',{title:'Database - Food/Drinks', fdData: data});
    });
});

router.get('/perks', function(req, res, next) {
    PerkTypeID = parseInt(req.query.PerkTypeID);
    var sql = 'SELECT * FROM PERKS WHERE PerkTypeID = ?';
    db.query(sql,[PerkTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('perks',{title:'Database - Perks', perkData: data});
    });
});

router.get('/potions-poisons',function(req,res,next){
  AlchemyTypeID = parseInt(req.query.AlchemyTypeID);
  var sql = 'SELECT * FROM POTIONS_AND_POISONS WHERE ATypeID = ?';
  db.query(sql,[AlchemyTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('potions-poisons',{title:'Database - Potions/Poisons', ppData: data});
  });
});

router.get('/powers', function(req, res, next) {
    PowerTypeID = parseInt(req.query.PowerTypeID);
    var sql = 'SELECT * FROM POWERS WHERE PowerTypeID = ?';
    db.query(sql,[PowerTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('powers',{title:'Database - Powers', powerData: data});
    });
});

router.get('/races', function(req, res, next) {
    var sql = 'SELECT * FROM RACES';
    db.query(sql,function(err,data,fields){
      if(err) throw err;
      res.render('races',{title:'Database - Races', raceData: data});
    });
});

router.get('/shields',function(req,res,next){
    ShieldTypeID = parseInt(req.query.ShieldTypeID);
    var sql = 'SELECT * FROM SHIELDS WHERE ArmorTypeID = ?';
    db.query(sql,[ShieldTypeID],function(err,data,fields){
        if(err) throw err;
        res.render('shields',{title:'Database - Shields', shieldData: data});
    });
});

router.get('/shouts', function(req, res, next) {
    var sql = 'SELECT * FROM SHOUTS';
    db.query(sql,function(err,data,fields){
      if(err) throw err;
      res.render('shouts',{title:'Database - Shouts', shoutData: data});
    });
});

router.get('/smithing-recipes', function(req, res, next) {
    SmthingTypeID = parseInt(req.query.SmithingTypeID);
    var sql = 'SELECT * FROM SMITHING_RECIPES WHERE SmithingTypeID = ?';
    db.query(sql,[SmthingTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('smithing-recipes',{title:'Database - Smithing Recipes', smithrecipeData: data});
    });
});

router.get('/forging', function(req, res, next) {
    RecipeTypeID = parseInt(req.query.RecipeTypeID);
    var sql = 'SELECT * FROM SMITHING_RECIPES WHERE SmithingTypeID = 3 AND RecipeTypeID = ?';
    db.query(sql,[RecipeTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('forging',{title:'Database - Smithing Recipes', forgingData: data});
    });
});

router.get('/smithing-upgrades', function(req, res, next) {
    var sql = 'SELECT * FROM SMITHING_UPGRADES';
    db.query(sql,function(err,data,fields){
      if(err) throw err;
      res.render('smithing-upgrades',{title:'Database - Smithing Upgrades', smithupgradeData: data});
    });
});

router.get('/soul-gems', function(req, res, next) {
    var sql = 'SELECT * FROM SOUL_GEMS';
    db.query(sql,function(err,data,fields){
      if(err) throw err;
      res.render('soul-gems',{title:'Database - Soul Gems', soulgemData: data});
    });
});

router.get('/spells', function(req, res, next) {
    SpellTypeID = parseInt(req.query.SpellTypeID);
    var sql = 'SELECT * FROM SPELLS WHERE SpellTypeID = ?';
    db.query(sql,[SpellTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('spells',{title:'Database - Spells', spellsData: data});
    });
});

router.get('/staffs', function(req, res, next) {
    SpellTypeID = parseInt(req.query.SpellTypeID);
    var sql = 'SELECT * FROM STAFFS WHERE SpellTypeID = ?';
    db.query(sql,[SpellTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('staffs',{title:'Database - Staffs', staffsData: data});
    });
});

router.get('/unique-armors', function(req, res, next) {
    ArmorTypeID = parseInt(req.query.ArmorTypeID);
    var sql = 'SELECT * FROM UNIQUE_ARMORS WHERE ArmorTypeID = ?';
    db.query(sql,[ArmorTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('unique-armors',{title:'Database - Unique Armors', uarmorData: data});
    });
});

router.get('/unique-clothes', function(req, res, next) {
    var sql = 'SELECT * FROM UNIQUE_CLOTHES';
    db.query(sql,function(err,data,fields){
      if(err) throw err;
      res.render('unique-clothes',{title:'Database - Unique Clothes', uclothesData: data});
    });
});

router.get('/unique-shields', function(req, res, next) {
    ShieldTypeID = parseInt(req.query.ShieldTypeID);
    var sql = 'SELECT * FROM UNIQUE_SHIELDS WHERE ArmorTypeID = ?';
    db.query(sql,[ShieldTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('unique-shields',{title:'Database - Unique Shields', ushieldsData: data});
    });
});

router.get('/unique-weapons', function(req, res, next) {
    WeaponTypeID = parseInt(req.query.WeaponTypeID);
    var sql = 'SELECT * FROM UNIQUE_WEAPONS WHERE WeaponTypeID = ?';
    db.query(sql,[WeaponTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('unique-weapons',{title:'Database - Unique Weapons', uweaponsData: data});
    });
});

router.get('/weapons', function(req, res, next) {
    WeaponTypeID = parseInt(req.query.WeaponTypeID);
    var sql = 'SELECT * FROM WEAPONS WHERE WeaponTypeID = ?';
    db.query(sql,[WeaponTypeID],function(err,data,fields){
      if(err) throw err;
      res.render('weapons',{title:'Database - Weapons', weaponsData: data});
    });
});


module.exports = router;