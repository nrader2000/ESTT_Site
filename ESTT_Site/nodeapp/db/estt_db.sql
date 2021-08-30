-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 10:42 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `AbilityID` int(11) NOT NULL,
  `AbilityName` varchar(255) NOT NULL,
  `AbilityDesc` varchar(255) NOT NULL,
  `AbilityTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`AbilityID`, `AbilityName`, `AbilityDesc`, `AbilityTypeID`) VALUES
(1, 'Fortify Magicka(High Elf)', 'High Elves are born with an additional 50 magicka', 1),
(2, 'Resist Disease(Argonian)', 'Argonian blood gives you 50% resistence to disease', 1),
(3, 'Water Breathing(Argonian)', 'Agronians can breathe underwater', 1),
(4, 'Resist Disease/Poison(Wood Elf)', 'Wood Elf blood gives you 50% resistence to disease and poison', 1),
(5, 'Magic Resistance(Breton)', 'Bretons take 10 less damage from all magic(10 magic resist)', 1),
(6, 'Resist Fire(Dark Elf)', 'Dark Elf blood gives you 50% resistence to fire', 1),
(7, 'Imperial Luck(Imperial)', 'Wherever gold can be found, imperials find 10 more gold', 1),
(8, 'Claws(Khajiit)', 'Khajiit Claws do 15 points of damage for unarmed damage', 1),
(9, 'Resist Frost(Nord)', 'Nord blood gives you 50% resistence to frost', 1),
(10, 'Resist Poison(Redguard)', 'Redgaurd blood is completly immune to all poison damage', 1),
(11, 'Nightstalker\'s Footsteps', 'Sneak attempts are easier, giving you 2 additional dice for sneak checks', 2),
(12, 'Resist Disease', 'Vampire blood makes you completly immune to diseases', 2),
(13, 'Resist Frost', 'Vampire blood gives you 25% resistence to frost(depends on vampirism stage)', 2),
(14, 'Resist Poison', 'Vampire blood is completly immune to all poison damage', 2),
(15, 'Weakness to Fire', 'Vampire blood gives you 25% vulnerability to fire(depends on vampirism stage)', 2),
(16, 'Resist Disease', 'Werewolf blood makes you completly immune to diseases', 3),
(17, 'Werewolf Claws', 'Werewolf Claws do 25 points of damage for unarmed damage', 3),
(18, 'Blessing of Akatosh', 'Regenerate an additional 5 points of magicka back every turn', 4),
(19, 'Blessing of Arkay', 'Increases your health by 25 points', 4),
(20, 'Blessing of Auriel', 'Do 5 additional damage with any ranged weapons', 4),
(21, 'Blessing of Azura', 'Take 5 less damage from all magic', 4),
(22, 'Blessing of Boethiah', 'Do 5 additional damage with any one-handed weapons', 4),
(23, 'Blessing of Dibella', 'Speechcraft is better, giving you 2 additional dice for speech checks', 4),
(24, 'Blessing of Julianos', 'Increases your magicka by 25 points', 4),
(25, 'Blessing of Kynareth', 'Increases your stamina by 25 points', 4),
(26, 'Blessing of Mara', 'Healing spells will heal 5 more points', 4),
(27, 'Blesssing of Nocturnal', 'Sneak attempts are easier, giving you 1 additional dice for sneak checks', 4),
(28, 'Blesssing of Stendarr', 'Block 5 more damage with shields', 4),
(29, 'Blessing of Talos', 'Take 1 turn off for all shout cooldowns', 4),
(30, 'Blessing of Zenithar', 'Prices are 10% cheaper', 4),
(31, 'Feim(Become Ethereal)', 'Regenerate an additional 5 points of health back per turn while being Ethereal', 5),
(32, 'Fus(Unrelenting Force)', 'You take 1 less turn from any immobilize while all opponents take 1 more turn', 5),
(33, 'Yol(Fire Breath)', 'Does additional damage for every fire breath teir(1-5dmg; 2-7dmg; 3-10dmg)', 5),
(34, 'The Apprentice Stone', 'Regenerate an additional 10 points of magicka back per turn , you take double damage from magic attacks', 6),
(35, 'The Atronach Stone', 'Regen 10 magicka from all magic attacks at you; 50 extra magicka; Regen 5 magicka per less per turn', 6),
(36, 'The Lady Stone', 'Regenerate an additional 5 points of health and stamina back per turn ', 6),
(37, 'The Lord Stone', 'Gain 20 points of base defense and 10 points of magic resist', 6),
(38, 'The Lover Stone', 'Gives 3 skill levels per level instead of 2 for all skills', 6),
(39, 'The Mage Stone', 'Gives 4 skill levels per level instead of 2 for skills under The Mage', 6),
(40, 'The Steed Stone', 'Increases max carry cap by 100 points; all equipped armor weighs nothing and does not affect stamina use when running', 6),
(41, 'The Thief Stone', 'Gives 4 skill levels per level instead of 2 for skills under The Thief', 6),
(42, 'The Warrior Stone', 'Gives 4 skill levels per level instead of 2 for skills under The Warrior', 6);

-- --------------------------------------------------------

--
-- Table structure for table `ability_types`
--

CREATE TABLE `ability_types` (
  `AbilityTypeID` int(11) NOT NULL,
  `AbilityTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ability_types`
--

INSERT INTO `ability_types` (`AbilityTypeID`, `AbilityTypeName`) VALUES
(1, 'Race Specific'),
(2, 'Vampire'),
(3, 'Werewolf'),
(4, 'Divine Blessings'),
(5, 'Meditations of Words of Power'),
(6, 'Standing Stone');

-- --------------------------------------------------------

--
-- Table structure for table `alchemy`
--

CREATE TABLE `alchemy` (
  `AID` int(11) NOT NULL,
  `AName` varchar(255) NOT NULL,
  `AIngredients` varchar(350) NOT NULL,
  `AEffect` varchar(255) NOT NULL,
  `ATypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alchemy`
--

INSERT INTO `alchemy` (`AID`, `AName`, `AIngredients`, `AEffect`, `ATypeID`) VALUES
(1, 'Cure Disease', 'Charred Skeever Hide; Felsaad Tern Feathers; Hawk Feathers; Mudcrab Chitin; Vampire Dust', 'Cures any given disease', 1),
(2, 'Fortify Alteration', 'Burnt Spriggan Wood; Grass Pod; River Betty; Spriggan Sap', 'Alteration spells cost 25% less mana for 2 turns', 1),
(3, 'Fortify Barter', 'Butterfly Wing; Dragons Tongue; Hagraven Claw; Tundra Cotton', 'Prices for all items are 10% less for a single visit to a shop', 1),
(4, 'Fortify Block', 'Bleeding Crown; Boar Tusk; Briar Heart; Honeycomb; Pearl; Slaughterfish Scales; Tundra Cotton', 'Block 5 more damage when you block for 2 turns', 1),
(5, 'Fortify Conjuration', 'Ancestor Moth Wing; Blue Butterfly Wing; Blue Mountain Flower; Bone Meal; Chaurus Hunter Antennae; Frost Salts; Hagraven Feathers; Lavender', 'Conjuration spells cost 25% less mana for 2 turns', 1),
(6, 'Fortify Destruction', 'Ash Creep Cluster; Beehive Husk; Ectoplasm; Glow Dust; Glowing Mushroom; Nightshade; Wisp Wrappings', 'Destruction spells cost 25% less mana for 2 turns', 1),
(7, 'Fortify Health', 'Bear Claws; Blue Mountain Flower; Boar Tusk; Giants Toe; Glowing Mushroom; Hanging Moss; Wheat; Yellow Mountain Flower', 'Increases max health by 20 points for 1 encounter', 1),
(8, 'Fortify Illusion', 'Dragons Tongue; Dwarven Oil; Mora Tapinella; Scaly Pholiota; Taproot', 'Illusion spells cost 25% less mana for 2 turns', 1),
(9, 'Fortify Lockpicking', 'Ashen Grass Pod; Falmer Ear; Namiras Rot; Pine Thrush Egg; Spider Egg', 'Adds 1 dice for 1 lockpicking check', 1),
(10, 'Fortify Magicka', 'Briar Heart; Ectoplasm; Emperor Parasol Moss; Fine-Cut Void Salts; Histcarp; Jazbay Grapes; Red Mountain Flower; Salmon Roe; Tundra Cotton; Void Salts', 'Increases max magicka by 20 points for 1 encounter', 1),
(11, 'Fortify Archery', 'Canis Root; Elves Ear; Juniper Berries; Spider Egg', 'Bows do 10 more damage for 2 turns', 1),
(12, 'Fortify One-Handed', 'Bear Claws; Canis Root; Hanging Moss; Hawk Feathers; Rock Warbler Egg; Small Pearl', 'One-Handed weapons deal 10 more damage for 2 turns', 1),
(13, 'Fortify Pickpocket', 'Blue Dartwing; Nordic Barnacle; Orange Dartwing; Slaughterfish Egg', 'Adds 1 dice for 1 pickpocket check', 1),
(14, 'Fortify Restoration', 'Abecean Longfin; Cyrodilic Spadetail; Salt Pile; Small Antlers; Small Pearl; Yellow Mountain Flower', 'Restoration spells cost 25% less mana for 2 turns', 1),
(15, 'Fortify Sneak', 'Abecean Longfin; Ashen Grass Pod; Beehive Husk; Frost Mirriam; Hawk Feathers; Human Flesh; Powdered Mammoth Tusk; Purple Mountain Flower', 'Adds 1 dice for 1 sneak check', 1),
(16, 'Fortify Stamina', 'Boar Tusk; Chaurus Eggs; Garlic; Large Antlers; Lavender; Slaughterfish Egg; Torchbug Thorax', 'Increases max magicka by 20 points for 1 encounter', 1),
(17, 'Fortify Two-Handed', 'Dragons Tongue; Emperor Parasol Moss; Fly Amanita; Troll Fat', 'Two-Handed weapons deal 10 more damage for 2 turns', 1),
(18, 'Invisibility', 'Ash Creep Cluster ; Chaurus Eggs; Crimson Nirnroot; Ice Wraith Teeth; Luna Moth Wing; Nirnroot; Vampire Dust', 'User turns invisible for a certain amount of time', 1),
(19, 'Regen Health', 'Emperor Parasol Moss; Garlic; Gleamblossom; Juniper Berries; Luna Moth Wing; Namiras Rot; Nordic Barnacle; Vampire Dust', 'Regen 5 additional health per turn for 1 encounter', 1),
(20, 'Regen Magicka', 'Dwarven Oil; Fire Salts; Garlic; Jazbay Grapes; Moon Sugar; Salmon Roe; Salt Pile; Taproot', 'Regen 5 additional magicka per turn for 1 encounter', 1),
(21, 'Regen Stamina', 'Bee; Fly Amanita; Mora Tapinella; Scaly Pholiota', 'Regen 5 additional stamina per turn for 1 encounter', 1),
(22, 'Resist Fire', 'Ash Creep Cluster; Ashen Grass Pod; Bone Meal; Dragons Tongue; Elves Ear; Fire Salts; Fly Amanita; Mudcrab Chitin; Snowberries; Spawn Ash', 'User takes 50% less damage from fire attacks for 1 encounter', 1),
(23, 'Resist Frost', 'Frost Mirriam; Frost Salts; Hawk Beak; Moon Sugar; Purple Mountain Flower; Silverside Perch; Slaughterfish Scales; Small Pearl; Snowberries; Thistle Branch', 'User takes 50% less damage from frost attacks for 1 encounter', 1),
(24, 'Resist Magic', 'Bleeding Crown; Chickens Egg; Crimson Nirnroot; Felsaad Tern Feathers; Fine-Cut Void Salts; Gleamblossom; Hagraven Claw; Hawks Egg; Lavender; Nirnroot; Tundra Cotton; Void Salts; Wisp Wrappings', 'User takes 10 less damage from all magic attacks for 1 encounter', 1),
(25, 'Resist Poison', 'Beehive Husk; Charred Skeever Hide; Falmer Ear; Garlic; Grass Pod; Mudcrab Chitin; Slaughterfish Egg; Thistle Branch; Troll Fat; Yellow Mountain Flower', 'User takes 50% less damage from poison for 1 encounter', 1),
(26, 'Resist Shock', 'Ash Hopper Jelly; Blue Dartwing; Glow Dust; Glowing Mushroom; Hawk Beak; Pearl; Pine Thrush Egg; Snowberries; Swamp Fungal Pod', 'User takes 50% less damage from shock attacks for 1 encounter', 1),
(27, 'Restore Health', 'Ash Hopper Jelly; Blisterwort; Blue Dartwing; Blue Mountain Flower; Butterfly Wing; Charred Skeever Hide; Daedra Heart; Eye of Sabre Cat; Felsaad Tern Feathers; Imp Stool; Rock Warbler Egg; Swamp Fungal Pod; Wheat', 'Restore 20 points of health', 1),
(28, 'Restore Magicka', 'Briar Heart; Creep Cluster; Dwarven Oil; Ectoplasm; Elves Ear; Fire Salts; Frost Salts; Giant Lichen; Grass Pod; Human Flesh; Moon Sugar; Mora Tapinella; Pearl; Red Mountain Flower; Taproot; Vampire Dust; White Cap', 'Restore 20 points of magicka', 1),
(29, 'Restore Stamina', 'Bear Claws; Bee; Charred Skeever Hide; Eye of Sabre Cat; Hawk Beak; Histcarp; Honeycomb; Large Antlers; Mudcrab Chitin; Netch Jelly; Orange Dartwing; Pearl; Pine Thrush Egg; Powdered Mammoth Tusk; Purple Mountain Flower; Sabre Cat Tooth; Salmon Roe; Silverside Perch; Small Pearl; Torchbug Thorax; Wisp Wrappings', 'Restore 20 points of stamina', 1),
(30, 'Waterbreathing', 'Chickens Egg; Fish(Any); Hawks Egg; Histcarp; Nordic Barnacle; Salmon Roe', 'User can breathe underwater for a certain amount of time', 1),
(31, 'Damage Health', 'Crimson Nirnroot; Deathbell; Ectoplasm; Emperor Parasol Moss; Falmer Ear; Fine-Cut Void Salts; Human Flesh; Human Heart; Imp Stool; Jarrin Root; Nightshade; Nirnroot; Poison Bloom ; Red Mountain Flower; River Betty; Skeever Tail; Small Antlers; Troll Fat; Void Salts', 'Deals 10 damage to Health', 2),
(32, 'Damage Magicka', 'Butterfly Wing; Chaurus Eggs; Daedra Heart; Eye of Sabre Cat; Glow Dust; Hagraven Feathers; Hanging Moss; Human Heart; Jarrin Root; Luna Moth Wing; Namiras Rot; Nordic Barnacle; Trama Root', 'Deals 10 damage to Magicka', 2),
(33, 'Damage Stamina', 'Ancestor Moth Wing; Ash Creep Cluster; Blisterwort; Blue Butterfly Wing; Bone Meal; Canis Root; Chaurus Hunter Antennae; Crimson Nirnroot; Cyrodilic Spadetail; Giants Toe; Jarrin Root; Nirnroot; Rock Warbler Egg; Spider Egg', 'Deals 10 damage to Stamina', 2),
(34, 'Fear', 'Blue Dartwing; Cyrodilic Spadetail; Daedra Heart; Gleamblossom; Namiras Rot; Netch Jelly; Poison Bloom; Powdered Mammoth Tusk', 'Targets up to level 14 flee for 1 turn', 2),
(35, 'Frenzy', 'Blisterwort; Boar Tusk; Falmer Ear; Fly Amanita; Hagraven Feathers; Human Heart; Troll Fat', 'Targets up to level 14 will attack a nearby enemy', 2),
(36, 'Paralysis', 'Briar Heart; Canis Root; Gleamblossom; Human Flesh; Imp Stool; Netch Jelly; Swamp Fungal Pod', 'Targets that fail to resist are paralyzed for 2 turns', 2),
(37, 'Slow', 'Burnt Spriggan Woodl Deathbell; Large Antlers; Poison Bloom; River Betty; Salt Pile; Trama Root', 'Target gets to go last for 2 rounds', 2),
(38, 'Weakness to Fire', 'Bleeding Crown; Burnt Spriggan Wood; Frost Salts; Ice Wraith Teeth; Juniper Berries; Moon Sugar; Powdered Mammoth Tusk', 'Target takes 50% more damage from fire attacks for 2 turns', 2),
(39, 'Weakness to Frost', 'Abecean Longfin; Ash Hopper Jelly; Elves Ear; Fire Salts; Ice Wraith Teeth; White Cap', 'Target takes 50% more damage from frost attacks for 2 turns', 2),
(40, 'Weakness to Magic', 'Creep Cluster; Dwarven Oil; Jazbay Grapes; Rock Warbler Egg; Salt Pile; Scaly Pholiota; Taproot; Torchbug Thorax', 'Target takes 10 more damage from all magic attacks for 2 turns', 2),
(41, 'Weakness to Poison', 'Abecean Longfin; Bleeding Crown; Chaurus Eggs; Deathbell; Giant Lichen; Pine Thrush Egg; Sabre Cat Tooth; Small Antlers', 'Target takes 50% more damage from damaging poisons for 2 turns', 2),
(42, 'Weakness to Shock', 'Ashen Grass Pod; Bee; Fine-Cut Void Salts; Giant Lichen; Hagraven Feathers; Trama Root; Void Salts', 'Target takes 50% more damage from shock attacks for 2 turns', 2);

-- --------------------------------------------------------

--
-- Table structure for table `alchemy_types`
--

CREATE TABLE `alchemy_types` (
  `ATypeID` int(11) NOT NULL,
  `ATypeName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alchemy_types`
--

INSERT INTO `alchemy_types` (`ATypeID`, `ATypeName`) VALUES
(1, 'Potions'),
(2, 'Poisons');

-- --------------------------------------------------------

--
-- Table structure for table `armors`
--

CREATE TABLE `armors` (
  `ArmorID` int(11) NOT NULL,
  `ArmorName` varchar(255) NOT NULL,
  `ArmorDefense` int(11) NOT NULL,
  `ArmorWeight` int(11) NOT NULL,
  `ArmorValue` int(11) NOT NULL,
  `ArmorTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `armors`
--

INSERT INTO `armors` (`ArmorID`, `ArmorName`, `ArmorDefense`, `ArmorWeight`, `ArmorValue`, `ArmorTypeID`) VALUES
(1, 'Hide', 5, 5, 50, 1),
(2, 'Worn Shrouded', 5, 6, 80, 1),
(3, 'Fur', 6, 6, 50, 1),
(4, 'Guard(Various)', 6, 6, 75, 1),
(5, 'Studded', 7, 6, 75, 1),
(6, 'Imperial Light', 7, 5, 65, 1),
(7, 'Studded Imperial', 7, 6, 125, 1),
(8, 'Vampire', 8, 5, 175, 1),
(9, 'Elven Light', 9, 4, 125, 1),
(10, 'Leather', 9, 6, 125, 1),
(11, 'Skaal', 9, 5, 100, 1),
(12, 'Stormcloak Officer', 10, 8, 35, 1),
(13, 'Forsworn', 11, 6, 100, 1),
(14, 'Dawnguard', 11, 6, 220, 1),
(15, 'Elven', 11, 6, 225, 1),
(16, 'Shrouded', 11, 7, 373, 1),
(17, 'Chitin', 12, 4, 240, 1),
(18, 'Vampire Royal', 12, 9, 250, 1),
(19, 'Scaled', 13, 6, 350, 1),
(20, 'Blackguards', 13, 7, 2079, 1),
(21, 'Thieves Guild', 13, 7, 665, 1),
(22, 'Elven Guilded', 15, 4, 550, 1),
(23, 'Guild Masters', 16, 10, 1779, 1),
(24, 'Glass', 16, 7, 900, 1),
(25, 'Ancient Falmer', 16, 7, 900, 1),
(26, 'Stalhrim Light', 17, 7, 925, 1),
(27, 'Ancient Shrouded', 18, 5, 617, 1),
(28, 'Dragonscale', 20, 10, 1500, 1),
(29, 'Imperial', 8, 35, 100, 2),
(30, 'Iron', 8, 30, 125, 2),
(31, 'Banded Iron', 8, 35, 200, 2),
(32, 'Falmer', 11, 20, 275, 2),
(33, 'Steel', 12, 25, 275, 2),
(34, 'Wolf', 12, 20, 55, 2),
(35, 'Bonemold', 13, 34, 290, 2),
(36, 'Dwarven', 14, 45, 400, 2),
(37, 'Dawnguard Heavy', 14, 42, 425, 2),
(38, 'Falmer Hardened', 16, 40, 250, 2),
(39, 'Improved Bonemold', 18, 43, 290, 2),
(40, 'Chitin Heavy', 20, 35, 650, 2),
(41, 'Orcish', 22, 35, 1000, 2),
(42, 'Steel Plate', 22, 38, 625, 2),
(43, 'Ebony', 26, 38, 1500, 2),
(44, 'Falmer Heavy', 26, 35, 1200, 2),
(45, 'Nordic Carved', 26, 37, 1600, 2),
(46, 'Blades', 26, 45, 400, 2),
(47, 'Dragonplate', 28, 40, 2125, 2),
(48, 'Stalhrim Heavy', 28, 38, 2200, 2),
(49, 'Ancient Nord', 30, 28, 235, 2),
(50, 'Daedric', 32, 50, 3200, 2);

-- --------------------------------------------------------

--
-- Table structure for table `armor_types`
--

CREATE TABLE `armor_types` (
  `ArmorTypeID` int(11) NOT NULL,
  `ArmorTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `armor_types`
--

INSERT INTO `armor_types` (`ArmorTypeID`, `ArmorTypeName`) VALUES
(1, 'Light'),
(2, 'Heavy');

-- --------------------------------------------------------

--
-- Table structure for table `bound_weapons`
--

CREATE TABLE `bound_weapons` (
  `BWeaponID` int(11) NOT NULL,
  `BWeaponName` varchar(255) NOT NULL,
  `BWeaponDamage` int(11) NOT NULL,
  `MagickaCost` int(11) NOT NULL,
  `WeaponTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bound_weapons`
--

INSERT INTO `bound_weapons` (`BWeaponID`, `BWeaponName`, `BWeaponDamage`, `MagickaCost`, `WeaponTypeID`) VALUES
(1, 'Bound Battleaxe', 17, 168, 1),
(2, 'Bound Bow', 15, 206, 2),
(3, 'Bound Dagger', 7, 32, 4),
(4, 'Bound Sword', 9, 92, 7);

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `ClothesID` int(11) NOT NULL,
  `ClothesName` varchar(255) NOT NULL,
  `ClothesWeight` int(11) NOT NULL,
  `ClothesValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`ClothesID`, `ClothesName`, `ClothesWeight`, `ClothesValue`) VALUES
(1, 'Belted Tunic', 1, 2),
(2, 'Blue/Black Robes', 1, 5),
(3, 'Blacksmith Apron', 1, 8),
(4, 'Clothes', 1, 2),
(5, 'Dunmer Outfit', 2, 25),
(6, 'Fine Clothes', 1, 40),
(7, 'Fur Trimmed Cloak', 1, 100),
(8, 'Hammerfell Garb', 1, 5),
(9, 'Hooded Monk Robes', 1, 5),
(10, 'Mage Robes', 2, 5),
(11, 'Miners Clothes', 1, 2),
(12, 'Monk Robes', 1, 5),
(13, 'Mourners Clothes', 1, 2),
(14, 'Nobles Clothes', 3, 100),
(15, 'Ragged Clothes', 1, 1),
(16, 'Redguard Clothes', 1, 5),
(17, 'Roughspun Tunic', 1, 1),
(18, 'Tavern Clothes', 1, 2),
(19, 'Vampire Clothes', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cooking_recipes`
--

CREATE TABLE `cooking_recipes` (
  `CRecipeID` int(11) NOT NULL,
  `CRecipeItemName` varchar(255) NOT NULL,
  `CMaterialsRequire` varchar(255) NOT NULL,
  `RecipeEffect` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cooking_recipes`
--

INSERT INTO `cooking_recipes` (`CRecipeID`, `CRecipeItemName`, `CMaterialsRequire`, `RecipeEffect`) VALUES
(1, 'Apple Cabbage Stew', 'Salt Pile, Red/Green Apple, Cabbage', 'Restore 10 health and 15 stamina'),
(2, 'Beef Stew', 'Raw Beef, Carrot, Salt Pile, Garlic', 'Increases stamina by 25 points for 1 encounter and regen 5 points of stamina per turn'),
(3, 'Cabbage Potato Soup', 'Potato, Salt Pile, Leek, Cabbage', 'Restore 10 health and 10 stamina'),
(4, 'Cabbage Soup', 'Salt Pile, Cabbage', 'Restore 10 health and 8 stamina'),
(5, 'Clam Chowder', 'Clam Meat, Potato, Jug of Milk, Butter', 'Restore 10 health and 10 stamina'),
(6, 'Cooked Beef', 'Salt Pile, Raw Beef', 'Restore 10 health'),
(7, 'Elsweyr Fondue', 'Eidar Cheese Wedge, Moon Sugar, Ale', 'Gain 5 magicka regen and 100 magicka for 1 encounter'),
(8, 'Grilled Chicked Breast', 'Chicken Breast, Salt Pile', 'Restore 5 health'),
(9, 'Horker Loaf', 'Salt Pile, Horker Meat', 'Restore 15 health and 15 stamina'),
(10, 'Horker Stew', 'Lavender, Tomato, Garlic, Horker Meat', 'Restore 15 health and 15 stamina and regen 5 health per turn for 1 encounter'),
(11, 'Horker and Ash Yam Stew', 'Ash Yam, Garlic, Horker Meat', 'Restore 16 health and 12 stamina'),
(12, 'Horse Haunch', 'Salt Pile, Horse Meat', 'Restore 10 health'),
(13, 'Leg of Goat Haunch', 'Salt Pile, Leg of Goat', 'Restore 10 health'),
(14, 'Mammoth Steak', 'Salt Pile, Mammoth Snout', 'Restore 10 health'),
(15, 'Pheasant Roast', 'Salt Pile, Pheasant Breast', 'Restore 5 health'),
(16, 'Potato Soup', 'Potato, Salt Pile', 'Restore 10 health and 10 stamina'),
(17, 'Rabbit Haunch', 'Salt Pile, Raw Rabbit Leg', 'Restore 5 health'),
(18, 'Salmon Steak', 'Salt Pile, Salmon Meat', 'Restore 5 health'),
(19, 'Steamed Mudcrab Legs', 'Mudcrab Legs, Butter', 'Restore 12 health'),
(20, 'Tomato Soup', 'Tomato, Salt Pile, Garlic, Leek', 'Restore 10 health and 10 stamina'),
(21, 'Vegetable Soup', 'Cabbage, Potato, Leek, Tomato', 'Regen 5 health and 5 stamina per turn for 1 encounter'),
(22, 'Venison Chop', 'Salt Pile, Venison', 'Restore 5 health'),
(23, 'Venison Stew', 'Venison, Salt Pile, Potato, Leek', 'Restore 15 stamina and regen 5 health and stamina per turn for 1 encounter');

-- --------------------------------------------------------

--
-- Table structure for table `debuffs`
--

CREATE TABLE `debuffs` (
  `DebuffID` int(11) NOT NULL,
  `DebuffName` varchar(255) NOT NULL,
  `DebuffDesc` varchar(255) NOT NULL,
  `DebuffFrom` varchar(255) NOT NULL,
  `DebuffTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `debuffs`
--

INSERT INTO `debuffs` (`DebuffID`, `DebuffName`, `DebuffDesc`, `DebuffFrom`, `DebuffTypeID`) VALUES
(1, 'Burn', 'Deals 1 point of damage per turn; all fire attacks deal 3 more damage while Burn is active', 'All Fire Spells', 1),
(2, 'Slow', 'Turns target into the slowest target in battle, making them last in the turn order', 'Freeze, Frost Runes', 1),
(3, 'Bleed', 'Deal 2/4/6 points of damage per turn', 'Battleaxes with Limbsplitter, War Axes with H&S', 1),
(4, 'Ataxia', 'Lose 2 dice with any lockpicking and pickpocketing checks', 'Skeevers, Traps, Frostbite Spiders, Slaughterfish', 2),
(5, 'Bone Break Fever', 'Lose 25 points of stamina', 'Bears, Traps', 2),
(6, 'Brain Rot', 'Lose 25 points of magicka', 'Hagravens, Traps', 2),
(7, 'Droops', 'Do 5 points less damage with melee weapons', 'Ash Hoppers', 2),
(8, 'Rattles', 'Regen 5 stamina per less per turn', 'Chaurus, Traps', 2),
(9, 'Rockjoint', 'Do 10 less damage with melee weapons', 'Horkers, Wolves, Bears; Foxes, Traps', 2),
(10, 'Sanguine Vampiris', 'Lose 25 points of health; unlocks vampire after 4 days/sessions without care', 'Vampires', 2),
(11, 'Witbane', 'Regen 5 magicka per less per turn', 'Sabre Cats, Traps', 2);

-- --------------------------------------------------------

--
-- Table structure for table `debuff_types`
--

CREATE TABLE `debuff_types` (
  `DebuffTypeID` int(11) NOT NULL,
  `DebuffTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `debuff_types`
--

INSERT INTO `debuff_types` (`DebuffTypeID`, `DebuffTypeName`) VALUES
(1, 'Battle Debuffs'),
(2, 'Diseases');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `EmailID` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`EmailID`, `Email`) VALUES
(1, 'merihuff@gmail.com'),
(2, 'travis.b.stop@gmail.com'),
(3, 'wirtha12@gmail.com'),
(5, 'elitemaster210@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `enchants`
--

CREATE TABLE `enchants` (
  `EnchantID` int(11) NOT NULL,
  `EnchantName` varchar(255) NOT NULL,
  `EnchantDesc` varchar(255) NOT NULL,
  `EnchantTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enchants`
--

INSERT INTO `enchants` (`EnchantID`, `EnchantName`, `EnchantDesc`, `EnchantTypeID`) VALUES
(1, 'Absorb Health', 'Absorb 8 points of health from target', 1),
(2, 'Absorb Magicka', 'Absorb 8 points of magicka from target', 1),
(3, 'Absorb Stamina', 'Absorb 8 points of stamina from target', 1),
(4, 'Banish', 'Summoned Daedra are sent back to Oblivion', 1),
(5, 'Fear', 'Creatures and people up to level 9 flee from combat for 1 turn', 1),
(6, 'Fiery Soul Trap', 'If the target attacked dies in the current/next round, fill a soul gem; also does 10 points damage to health', 1),
(7, 'Fire Damage', 'Target takes 10 points damage to health, gives target Burn for 2 rounds', 1),
(8, 'Icy Soul Trap', 'If the target attacked dies in the current/next round, fill a soul gem; also does 5 points damage to health and stamina', 1),
(9, 'Frost Damage', 'Target takes 10 points damage to health and stamina', 1),
(10, 'Magicka Damage', 'Target takes 10 points damage to magicka', 1),
(11, 'Shock Damage', 'Target takes 10 points damage to health and magicka', 1),
(12, 'Soul Trap', 'If the target attacked dies in the current/next round, fill a soul gem in your inventory', 1),
(13, 'Stamina Damage', 'Target takes 10 points damage to stamina', 1),
(14, 'Turn Undead', 'Undead up to level 13 flee for 1 turn', 1),
(15, 'Fortify Alchemy', 'Increases the potency of created potions and poisons(dm decides this increase)', 2),
(16, 'Fortify Alteration', 'Alteration spells cost 25% less mana', 2),
(17, 'Fortify Alteration+Magicka Regen', 'Alteration spells cost 25% less mana; Regenerate an additional 2 points of magicka back every turn', 2),
(18, 'Fortify Archery', 'Bows do 10 more damage', 2),
(19, 'Fortify Barter', 'Prices for all items are 10% less', 2),
(20, 'Fortify Block', 'Block 5 more damage when you block', 2),
(21, 'Fortify Carry Weight', 'Increases max carry cap by 20 points', 2),
(22, 'Fortify Conjuration', 'Conjuration spells cost 25% less mana', 2),
(23, 'Fortify Conjuration+Magicka Regen', 'Conjuration spells cost 25% less mana; Regenerate an additional 2 points of magicka back every turn', 2),
(24, 'Fortify Destruction', 'Destruction spells cost 25% less mana', 2),
(25, 'Fortify Destruction+Magicka Regen', 'Destruction spells cost 25% less mana; Regenerate an additional 2 points of magicka back every turn', 2),
(26, 'Fortify Health Regen', 'Regenerate an additional 5 points of health back every turn', 2),
(27, 'Fortify Health', 'Increases health by 20 points', 2),
(28, 'Fortify Illusion', 'Illusion spells cost 25% less mana', 2),
(29, 'Fortify Illusion+Magicka Regen', 'Illusion spells cost 25% less mana; Regenerate an additional 2 points of magicka back every turn', 2),
(30, 'Fortify Lockpicking', 'Adds 1 dice to a lockpicking check', 2),
(31, 'Fortify Magicka', 'Increases magicka by 20 points', 2),
(32, 'Fortify Magicka Regen', 'Regenerate an additional 5 points of magicka back every turn', 2),
(33, 'Fortify One-Handed', 'One-Handed weapons deal 10 more damage', 2),
(34, 'Fortify Pickpocket', 'Adds 1 dice to a pickpocketing check', 2),
(35, 'Fortify Restoration', 'Restoration spells cost 25% less mana', 2),
(36, 'Fortify Restoration+Magicka Regen', 'Restoration spells cost 25% less mana; Regenerate an additional 2 points of magicka back every turn', 2),
(37, 'Fortify Stamina', 'Increases stamina by 20 points', 2),
(38, 'Fortify Stamina Regen', 'Regenerate an additional 5 points of stamina back every turn', 2),
(39, 'Fortify Two-Handed', 'Two-Handed weapons deal 10 more damage', 2),
(40, 'Fortify Unarmed', 'Unarmed strikes deal 10 more damage', 2),
(41, 'Muffle', 'Adds 1 dice to a sneak check', 2),
(42, 'Resist Disease', '50% disease resist', 2),
(43, 'Resist Fire', 'Wearer only takes 50% of damage from all fire attacks', 2),
(44, 'Resist Frost', 'Wearer only takes 50% of damage from all frost attacks', 2),
(45, 'Resist Magic', 'Wearer takes 10 less damage from all magic attacks', 2),
(46, 'Resist Poison', '50% poison resist', 2),
(47, 'Resist Shock', 'Wearer only takes 50% of damage from all shock attacks', 2),
(48, 'Water Breathing', 'Gives the wearer the ability to breath under water', 2);

-- --------------------------------------------------------

--
-- Table structure for table `enchant_types`
--

CREATE TABLE `enchant_types` (
  `EnchantTypeID` int(11) NOT NULL,
  `EnchantTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enchant_types`
--

INSERT INTO `enchant_types` (`EnchantTypeID`, `EnchantTypeName`) VALUES
(1, 'Weapon Enchants'),
(2, 'Apparel Enchants');

-- --------------------------------------------------------

--
-- Table structure for table `fd_types`
--

CREATE TABLE `fd_types` (
  `FDTYPEID` int(11) NOT NULL,
  `FDTYPEName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fd_types`
--

INSERT INTO `fd_types` (`FDTYPEID`, `FDTYPEName`) VALUES
(1, 'Ingredients'),
(2, 'Food'),
(3, 'Drink');

-- --------------------------------------------------------

--
-- Table structure for table `food_and_drink`
--

CREATE TABLE `food_and_drink` (
  `FDID` int(11) NOT NULL,
  `FDName` varchar(255) NOT NULL,
  `FDRestore` varchar(255) NOT NULL,
  `FDTYPEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_and_drink`
--

INSERT INTO `food_and_drink` (`FDID`, `FDName`, `FDRestore`, `FDTYPEID`) VALUES
(52, 'Ale', '15 health', 1),
(53, 'Ash Yam', '1 health', 1),
(54, 'Butter', '2 health', 1),
(55, 'Cabbage', '1 health', 1),
(56, 'Carrot', '1 health', 1),
(57, 'Chicken Breast', '2 health', 1),
(58, 'Clam Meat', '1 health', 1),
(59, 'Eidar Cheese Wheel', '15 health', 1),
(60, 'Horker Meat', '1 health', 1),
(61, 'Horse Meat', '2 health', 1),
(62, 'Jug of Milk', '2 health', 1),
(63, 'Leek', '1 health', 1),
(64, 'Leg of Goat', '2 health', 1),
(65, 'Mammoth Snout', '2 health', 1),
(66, 'Mudcrab Legs', '1 health', 1),
(67, 'Pheasant Breast', '1 health', 1),
(68, 'Potato', '1 health', 1),
(69, 'Raw Beef', '2 health', 1),
(70, 'Raw Rabbit Leg', '1 health', 1),
(71, 'Red Apple', '1 health', 1),
(72, 'Green Apple', '1 health', 1),
(73, 'Salmon Meat', '1 health', 1),
(74, 'Tomato', '1 health', 1),
(75, 'Venison', '2 health', 1),
(76, 'Apple Cabbage Stew', '10 health and 15 stamina', 2),
(77, 'Beef Stew', 'None(extra effects in cooking table)', 2),
(78, 'Cabbage Potato Soup', '10 health and 10 stamina', 2),
(79, 'Cabbage Soup', '10 health and 8 stamina', 2),
(80, 'Clam Chowder', '10 health and 10 stamina', 2),
(81, 'Cooked Beef', '10 health', 2),
(82, 'Elsweyr Fondue', 'None(extra effects in cooking table)', 2),
(83, 'Grilled Chicked Breast', '5 health', 2),
(84, 'Horker Loaf', '15 health and 15 stamina', 2),
(85, 'Horker Stew', '15 stamina', 2),
(86, 'Horker and Ash Yam Stew', '16 health and 12 stamina', 2),
(87, 'Horse Haunch', '10 health', 2),
(88, 'Leg of Goat Haunch', '10 health', 2),
(89, 'Mammoth Steak', '10 health', 2),
(90, 'Pheasant Roast', '5 health', 2),
(91, 'Potato Soup', '10 health	and 10 stamina', 2),
(92, 'Rabbit Haunch', '5 health', 2),
(93, 'Salmon Steak', '5 health', 2),
(94, 'Steamed Mudcrab Legs', '12 health', 2),
(95, 'Tomato Soup', '10 health	and 10 stamina', 2),
(96, 'Vegetable Soup', '5 health and 5 stamina per turn', 2),
(97, 'Venison Chop', '5 health', 2),
(98, 'Venison Stew', '15 stamina and 5 health and stamina per turn', 2),
(99, 'Apple Dumpling', '5 health', 2),
(100, 'Apple Pie', '10 health', 2),
(101, 'Ash Hopper Leg', '2 health', 2),
(102, 'Ash Hopper Meat', '2 health', 2),
(103, 'Baked Potatos', '5 health', 2),
(104, 'Boar Meat', '2 health', 2),
(105, 'Boiled Cream Treat', '10 health', 2),
(106, 'Braided Bread', '2 health', 2),
(107, 'Bread', '2 health', 2),
(108, 'Charred Skeever Meat', '2 health', 2),
(109, 'Cooked Boar Meat', '12 health', 2),
(110, 'Dog Meat', '2 health', 2),
(111, 'Eidar Cheese Wedge', '2 health', 2),
(112, 'Fresh Meat', '5 health', 2),
(113, 'Gralic Bread', '2 health', 2),
(114, 'Goat Cheese Wedge', '2 health', 2),
(115, 'Goat Cheese Wheel', '15 health', 2),
(116, 'Gourd', '1 health', 2),
(117, 'Grilled Leaks', '6 health', 2),
(118, 'Homecooked Meal', '20 health', 2),
(119, 'Honey Nut Treat', '5 health', 2),
(120, 'Jazbay Crostata', '10 health', 2),
(121, 'Juniper Berry Crostata', '10 health', 2),
(122, 'Lavender Dumpling', '5 health', 2),
(123, 'Long Taffy Treat', '10 health and 5 stamina', 2),
(124, 'Mammoth Cheese Bowl', '10 health and 15 stamina', 2),
(125, 'Potato Bread', '3 health', 2),
(126, 'Sack of Flour', '1 health', 2),
(127, 'Seared Slaughterfish', '5 health', 2),
(128, 'Sliced Eidar Cheese', '15 health', 2),
(129, 'Sliced Goat Cheese', '15 health', 2),
(130, 'Snowberry Crostata', '10 health', 2),
(131, 'Soul Husk', '1 health', 2),
(132, 'Spiced Beef', '5 health', 2),
(133, 'Sweet Roll', '20 health', 2),
(134, 'Alto Wine', '15 stamina', 3),
(135, 'Argonian Ale', '15 stamina', 3),
(136, 'Argonian Bloodwine', '10 poison resist for 1 encounter', 3),
(137, 'Ashfire Mead', '40 stamina', 3),
(138, 'Balmora Blue', '25 stamina', 3),
(139, 'Black-Briar Mead', '20 stamina', 3),
(140, 'Black-Briar Reserve', '30 stamina', 3),
(141, 'Cliff Racer', '25 stamina', 3),
(142, 'Colovian Brandy', '25 stamina + Speech Buff(1 additional charisma dice for a day)', 3),
(143, 'Cyrodilic Brandy', '25 stamina', 3),
(144, 'Double Distilled Skooma', '50 stamina', 3),
(145, 'Dragons Breath Mead', '20 stamina', 3),
(146, 'Emberbrand Wine', '60 stamina', 3),
(147, 'Firebrand Wine', '20 stamina + 15 Frost Resist for 1 encounter', 3),
(148, 'Flin', '20 stamina', 3),
(149, 'Honningbrew Mead', '20 stamina', 3),
(150, 'Matze', '10 stamina + 10 Frost Resist for 1 encounter', 3),
(151, 'Nord Mead', '15 stamina', 3),
(152, 'Redwater Skooma', '40 stamina', 3),
(153, 'Shein', '25 stamina', 3),
(154, 'Skooma', '25 stamina', 3),
(155, 'Spiced Wine', '25 stamina', 3),
(156, 'Sujamma', '15 stamina', 3),
(157, 'Velvet LeChance', '25 stamina', 3),
(158, 'White-Gold Tower', '25 stamina', 3),
(159, 'Wine', '15 stamina', 3);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `ItemID` int(11) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `ItemWeight` int(11) NOT NULL,
  `ItemValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`ItemID`, `ItemName`, `ItemWeight`, `ItemValue`) VALUES
(1, 'Abecean Longfin', 1, 15),
(2, 'Adept Robes', 1, 600),
(3, 'Aegisbane', 24, 180),
(4, 'Aetherial Shield', 12, 2000),
(5, 'Aetherial Staff', 8, 1970),
(6, 'Ale', 1, 5),
(7, 'All things Alchemy: Vol. 1', 1, 125),
(8, 'All things Alchemy: Vol. 2', 1, 125),
(9, 'All things Alchemy: Vol. 3', 1, 125),
(10, 'All things Alchemy: Vol. 4', 1, 125),
(11, 'All things Alchemy: Vol. 5', 1, 125),
(12, 'All things Alchemy: Vol. 6', 1, 125),
(13, 'All things Alchemy: Vol. 7', 1, 125),
(14, 'All things Enchanting: Vol. 1', 1, 125),
(15, 'All things Enchanting: Vol. 2', 1, 125),
(16, 'All things Enchanting: Vol. 3', 1, 125),
(17, 'All things Enchanting: Vol. 4', 1, 125),
(18, 'All things Enchanting: Vol. 5', 1, 125),
(19, 'All things Enchanting: Vol. 6', 1, 125),
(20, 'All things Enchanting: Vol. 7', 1, 125),
(21, 'All things Enchanting: Vol. 8', 1, 125),
(22, 'Alto Wine', 1, 12),
(23, 'Anceint Nord Armor', 28, 235),
(24, 'Ancestor Moth Wing', 1, 2),
(25, 'Ancient Falmer Armor', 7, 900),
(26, 'Ancient Nord Battle Axe', 22, 28),
(27, 'Ancient Nord Bow', 12, 45),
(28, 'Ancient Nord Greatsword', 18, 35),
(29, 'Ancient Nord Sword ', 12, 13),
(30, 'Ancient Nord War Axe', 14, 15),
(31, 'Ancient Shrouded Armor', 5, 617),
(32, 'Apple Cabbage Stew', 1, 8),
(33, 'Apple Dumpling', 1, 3),
(34, 'Apple Pie', 1, 5),
(35, 'Apprentice Robes', 1, 400),
(36, 'Archmages Robes', 1, 3265),
(37, 'Argonian Ale', 1, 5),
(38, 'Argonian Bloodwine', 1, 100),
(39, 'Ash Creep Cluster', 1, 20),
(40, 'Ash Hopper Jelly', 1, 20),
(41, 'Ash Hopper Leg', 1, 2),
(42, 'Ash Hopper Meat', 1, 2),
(43, 'Ash Yam', 1, 1),
(44, 'Ashen Grass Pod', 1, 1),
(45, 'Ashfire Mead', 1, 50),
(46, 'Auriel\'s Bow', 11, 1000),
(47, 'Auriels Shield', 14, 755),
(48, 'Aversion to Fire', 1, 164),
(49, 'Aversion to Frost', 1, 137),
(50, 'Aversion to Magic', 1, 274),
(51, 'Aversion to Shock', 1, 137),
(52, 'Baked Potatos', 1, 2),
(53, 'Balmora Blue', 1, 68),
(54, 'Banded Iron Armor', 35, 200),
(55, 'Banded Iron Shield', 12, 100),
(56, 'Bear Claws', 1, 2),
(57, 'Bear Pelt', 3, 50),
(58, 'Bee', 1, 3),
(59, 'Beef Stew', 1, 8),
(60, 'Beehive Husk', 1, 5),
(61, 'Belted Tunic', 1, 2),
(62, 'Bent Dwemer Scrap Metal', 2, 15),
(63, 'Black Soul Gem', 1, 300),
(64, 'Black Soul Gem (Filled)', 1, 750),
(65, 'Black-Briar Mead', 1, 25),
(66, 'Black-Briar Reserve', 1, 100),
(67, 'Blackguards Armor', 7, 2079),
(68, 'Blacksmith Apron', 1, 8),
(69, 'Blade of Sacrifice', 4, 144),
(70, 'Blade of Woe', 7, 880),
(71, 'Blades Armor', 45, 400),
(72, 'Blades Shield', 12, 225),
(73, 'Blades Sword', 10, 300),
(74, 'Bleeding Crown', 1, 10),
(75, 'Blisterwort', 1, 12),
(76, 'Bloodscythe', 10, 1859),
(77, 'Bloodskal Blade', 16, 1250),
(78, 'Bloodthorn', 3, 183),
(79, 'Blue Butterfly Wing', 1, 2),
(80, 'Blue Dartwing', 1, 1),
(81, 'Blue Mountain Flower', 1, 2),
(82, 'Blue/Black Mage Robes', 1, 10),
(83, 'Blue/Black Robes', 1, 5),
(84, 'Boar Meat', 1, 2),
(85, 'Boar Tusk', 1, 20),
(86, 'Boiled Cream Treat', 1, 4),
(87, 'Bone Meal', 1, 5),
(88, 'Bonemold Armor', 34, 290),
(89, 'Bonemold Shield', 8, 95),
(90, 'Bow of the Hunt', 7, 434),
(91, 'Braided Bread', 1, 2),
(92, 'Bread', 1, 2),
(93, 'Briar Heart', 1, 20),
(94, 'Burnt Spriggan Wood', 1, 20),
(95, 'Butter', 1, 1),
(96, 'Butterfly Wing', 1, 3),
(97, 'Cabbage', 1, 2),
(98, 'Cabbage Potato Soup', 1, 5),
(99, 'Cabbage Soup', 1, 5),
(100, 'Canis Root', 1, 5),
(101, 'Carrot', 1, 1),
(102, 'Cave Bear Pelt', 3, 60),
(103, 'Champion\'s Cudgel', 27, 1767),
(104, 'Charred Skeever Hide', 1, 1),
(105, 'Charred Skeever Meat', 1, 4),
(106, 'Chaurus Eggs', 1, 10),
(107, 'Chaurus Hunter Antennae', 1, 2),
(108, 'Chicken Breast', 1, 3),
(109, 'Chicken Dumpling', 1, 3),
(110, 'Chicken\'s Egg', 1, 2),
(111, 'Chillrend', 14, 846),
(112, 'Chitin Armor', 4, 240),
(113, 'Chitin Heavy Armor', 35, 650),
(114, 'Chitin Heavy Sheild', 12, 200),
(115, 'Chitin Shield', 8, 215),
(116, 'Clam Chowder', 1, 5),
(117, 'Clam Meat', 1, 1),
(118, 'Cliff Racer', 1, 5),
(119, 'Cliff Racer', 1, 5),
(120, 'Clothes', 1, 2),
(121, 'Colovian Brandy', 1, 100),
(122, 'Common Soul Gem', 1, 50),
(123, 'Common Soul Gem (Filled)', 1, 150),
(124, 'Cooked Beef', 1, 5),
(125, 'Cooked Boar Meat', 1, 15),
(126, 'Corundum Ingot', 1, 40),
(127, 'Corundum Ore', 1, 20),
(128, 'Cow Hide', 2, 10),
(129, 'Creep Cluster', 1, 1),
(130, 'Crimson Nirnroot', 1, 10),
(131, 'Crossbow', 14, 120),
(132, 'Cultist Robes', 1, 100),
(133, 'Cyrodilic Brandy', 1, 150),
(134, 'Cyrodilic Spadetail', 1, 15),
(135, 'Daedra Heart', 1, 250),
(136, 'Daedric Battleaxe', 27, 2750),
(137, 'Daedric Bow', 18, 2500),
(138, 'Daedric Croosbow', 25, 2700),
(139, 'Daedric Daedric', 50, 3200),
(140, 'Daedric Dagger', 6, 500),
(141, 'Daedric Greatsword', 23, 2500),
(142, 'Daedric Mace', 20, 1750),
(143, 'Daedric Shield', 15, 1600),
(144, 'Daedric Sword', 16, 1250),
(145, 'Daedric War Axe', 18, 1500),
(146, 'Daedric Warhammer', 31, 4000),
(147, 'Damage Health Poison', 0, 58),
(148, 'Damage Magicka Poison', 0, 92),
(149, 'Damage Stamina Poison', 0, 75),
(150, 'Dawnbreaker(Sword)', 10, 740),
(151, 'Dawngaurd Armor', 6, 220),
(152, 'Dawnguard Heavy Armor', 42, 425),
(153, 'Dawnguard Rune Axe', 13, 175),
(154, 'Dawnguard Rune Hammer', 26, 500),
(155, 'Dawnguard Rune Shield', 6, 450),
(156, 'Dawnguard Shield', 10, 240),
(157, 'Dawnguard War Axe', 13, 55),
(158, 'Dawnguard Warhammer', 26, 110),
(159, 'Deadly Aversion to Fire', 1, 318),
(160, 'Deadly Aversion to Frost', 1, 265),
(161, 'Deadly Aversion to Magic', 1, 530),
(162, 'Deadly Aversion to Shock', 1, 265),
(163, 'Deadly Magicka Poison', 1, 465),
(164, 'Deadly Poison', 1, 296),
(165, 'Deadly Stamina Poison', 1, 465),
(166, 'Deathbell', 1, 4),
(167, 'Deathbrand Armor', 7, 2433),
(168, 'Deer Hide', 2, 10),
(169, 'Dented Iron Shield', 12, 30),
(170, 'Dog Meat', 1, 3),
(171, 'Double Distilled Skooma', 1, 44),
(172, 'Dragon Priest Dagger', 5, 9),
(173, 'Dragon\'s Breath Mead', 1, 5),
(174, 'Dragon\'s Tongue', 1, 5),
(175, 'Dragonbane', 12, 1189),
(176, 'Dragonbone Battleaxe', 30, 3000),
(177, 'Dragonbone Bow', 20, 2725),
(178, 'Dragonbone Crossbow', 27, 2950),
(179, 'Dragonbone Dagger', 7, 600),
(180, 'Dragonbone Greatsword', 27, 2725),
(181, 'Dragonbone Mace', 22, 2000),
(182, 'Dragonbone Sword', 19, 1500),
(183, 'Dragonbone War Axe', 21, 1700),
(184, 'Dragonbone Warhammer', 33, 4275),
(185, 'Dragonplate Armor', 40, 2125),
(186, 'Dragonplate Shield', 10, 1050),
(187, 'Dragonscale Armor', 10, 1500),
(188, 'Dragonscale Shield', 6, 750),
(189, 'Drainblood Battleaxe', 5, 266),
(190, 'Drainheart Sword', 3, 66),
(191, 'Drainspell Bow', 6, 458),
(192, 'Draught of Alteration', 1, 106),
(193, 'Draught of Conjuration', 1, 106),
(194, 'Draught of Destruction', 1, 106),
(195, 'Draught of Enhanced Stamina', 1, 145),
(196, 'Draught of Extra Magicka', 1, 145),
(197, 'Draught of Haggling', 1, 131),
(198, 'Draught of Health', 1, 145),
(199, 'Draught of Illusion', 1, 106),
(200, 'Draught of Light Feet', 1, 106),
(201, 'Draught of Lockpicking', 1, 106),
(202, 'Draught of Pickpocketing', 1, 106),
(203, 'Draught of Resist Fire', 1, 151),
(204, 'Draught of Resist Frost', 1, 151),
(205, 'Draught of Resist Magic', 1, 151),
(206, 'Draught of Resist Shock', 1, 151),
(207, 'Draught of Restoration', 1, 106),
(208, 'Draught of Strength', 1, 266),
(209, 'Draught of the Beserker', 1, 151),
(210, 'Draught of the Defender', 1, 70),
(211, 'Draught of the Warrior', 1, 151),
(212, 'Draught of True Shot', 1, 151),
(213, 'Dunmer Outfit', 2, 25),
(214, 'Dwarven Armor', 45, 400),
(215, 'Dwarven Battleaxe', 23, 300),
(216, 'Dwarven Bow', 10, 270),
(217, 'Dwarven Crossbow', 20, 350),
(218, 'Dwarven Dagger', 4, 55),
(219, 'Dwarven Greatsword', 19, 270),
(220, 'Dwarven Mace', 16, 190),
(221, 'Dwarven Metal Ingot', 1, 30),
(222, 'Dwarven Oil', 1, 15),
(223, 'Dwarven Shield', 12, 225),
(224, 'Dwarven Sword', 12, 135),
(225, 'Dwarven War Axe', 14, 165),
(226, 'Dwarven Warhammer', 27, 325),
(227, 'Ebony Armor', 38, 1500),
(228, 'Ebony Battleaxe', 26, 1585),
(229, 'Ebony Blade(Greatsword)', 10, 2000),
(230, 'Ebony Bow', 16, 1440),
(231, 'Ebony Crossbow', 23, 2500),
(232, 'Ebony Dagger', 5, 290),
(233, 'Ebony Greatsword', 22, 1440),
(234, 'Ebony Ingot', 1, 150),
(235, 'Ebony Mace', 19, 1000),
(236, 'Ebony Mail', 28, 5000),
(237, 'Ebony Ore', 1, 60),
(238, 'Ebony Shield ', 14, 750),
(239, 'Ebony Sword', 15, 720),
(240, 'Ebony War Axe', 17, 865),
(241, 'Ebony Warhammer', 30, 1725),
(242, 'Ectoplasm', 1, 25),
(243, 'Eduj', 9, 330),
(244, 'Eidar Cheese Wedge', 1, 5),
(245, 'Eidar Cheese Wheel', 2, 13),
(246, 'Elixir of Alteration', 1, 227),
(247, 'Elixir of Conjuration', 1, 227),
(248, 'Elixir of Destruction', 1, 227),
(249, 'Elixir of Enhanced Stamina', 1, 398),
(250, 'Elixir of Extra Magicka', 1, 398),
(251, 'Elixir of Haggling', 1, 230),
(252, 'Elixir of Health', 1, 398),
(253, 'Elixir of Illusion', 1, 227),
(254, 'Elixir of Light Feet', 1, 227),
(255, 'Elixir of Lockpicking', 1, 227),
(256, 'Elixir of Pickpocketing', 1, 227),
(257, 'Elixir of Resist Fire', 1, 265),
(258, 'Elixir of Resist Frost', 1, 265),
(259, 'Elixir of Resist Magic', 1, 265),
(260, 'Elixir of Resist Shock', 1, 265),
(261, 'Elixir of Restoration', 1, 227),
(262, 'Elixir of Strength', 1, 571),
(263, 'Elixir of the Beserker', 1, 265),
(264, 'Elixir of the Defender', 1, 123),
(265, 'Elixir of the Warrior', 1, 265),
(266, 'Elixir of True Shot', 1, 265),
(267, 'Elsweyr Fondue', 1, 5),
(268, 'Elven Armor', 6, 225),
(269, 'Elven Battleaxe', 24, 520),
(270, 'Elven Bow', 12, 470),
(271, 'Elven Dager', 4, 95),
(272, 'Elven Greatsword', 20, 470),
(273, 'Elven Guilded Armor', 4, 550),
(274, 'Elven Light Armor', 4, 125),
(275, 'Elven Mace', 17, 330),
(276, 'Elven Shield', 4, 115),
(277, 'Elven Sword', 13, 235),
(278, 'Elven War Axe', 15, 280),
(279, 'Elven Warhammer', 28, 565),
(280, 'Elves Ear', 1, 10),
(281, 'Emberbrand Wine', 1, 15),
(282, 'Emperor Parasol Moss', 1, 1),
(283, 'Expert Robes', 1, 800),
(284, 'Eye of Melka', 8, 1234),
(285, 'Eye of Sabre Cat', 1, 2),
(286, 'Falmer Armor', 20, 275),
(287, 'Falmer Bow', 15, 135),
(288, 'Falmer Ear', 1, 10),
(289, 'Falmer Hardened Armor', 40, 250),
(290, 'Falmer Heavy Armor', 35, 1200),
(291, 'Falmer Shield', 15, 10),
(292, 'Falmer Sword', 18, 67),
(293, 'Falmer War Axe', 21, 82),
(294, 'Fear Poison', 0, 98),
(295, 'Felsaad Tern Feathers', 1, 15),
(296, 'Fine Clothes', 1, 40),
(297, 'Fire Salts', 1, 50),
(298, 'Firebrand Wine', 1, 179),
(299, 'Flin', 1, 15),
(300, 'Fly Amanita', 1, 2),
(301, 'Fork', 1, 5),
(302, 'Forsworn Armor', 6, 100),
(303, 'Forsworn Bow', 11, 145),
(304, 'Forsworn Staff', 8, 183),
(305, 'Forsworn Sword', 13, 70),
(306, 'Forsworn War Axe', 15, 90),
(307, 'Fortify Alteration Potion', 0, 96),
(308, 'Fortify Archery Potion', 0, 96),
(309, 'Fortify Barter Potion', 0, 96),
(310, 'Fortify Block Potion', 0, 96),
(311, 'Fortify Conjuration Potion', 0, 96),
(312, 'Fortify Destruction Potion', 0, 96),
(313, 'Fortify Health Potion', 0, 96),
(314, 'Fortify Illusion Potion', 0, 96),
(315, 'Fortify Lockpicking Potion', 0, 96),
(316, 'Fortify Magicka Potion', 0, 96),
(317, 'Fortify One-Handed Potion', 0, 96),
(318, 'Fortify Pickpocket Potion', 0, 96),
(319, 'Fortify Restoration Potion', 0, 96),
(320, 'Fortify Sneak Potion', 0, 96),
(321, 'Fortify Stamina Potion', 0, 96),
(322, 'Fortify Two-Handed Potion', 0, 96),
(323, 'Fox Pelt', 1, 5),
(324, 'Frenzy Poison', 0, 88),
(325, 'Fresh Meat', 3, 6),
(326, 'Frost Mirriam', 1, 1),
(327, 'Frost Salts', 1, 100),
(328, 'Frostbite Venom', 1, 21),
(329, 'Fur Armor', 6, 50),
(330, 'Fur Trimmed Cloak', 1, 100),
(331, 'Garlic', 1, 1),
(332, 'Garlic Bread', 1, 2),
(333, 'Gauldur Blackblade', 15, 669),
(334, 'Gauldur Blackbow', 18, 530),
(335, 'Ghostblade', 1, 300),
(336, 'Giant Lichen', 1, 5),
(337, 'Giant\'s Toe', 1, 20),
(338, 'Glass Armor', 7, 900),
(339, 'Glass Battleaxe', 25, 900),
(340, 'Glass Bow', 14, 820),
(341, 'Glass Dagger', 5, 165),
(342, 'Glass Greatsword', 22, 820),
(343, 'Glass Mace', 18, 575),
(344, 'Glass Shield', 6, 450),
(345, 'Glass Sword', 14, 410),
(346, 'Glass War Axe', 16, 490),
(347, 'Glass Warhammer', 29, 985),
(348, 'Gleamblossom', 1, 5),
(349, 'Glow Dust', 1, 20),
(350, 'Glowing Mushroom', 1, 5),
(351, 'Goat Cheese Wedge', 1, 4),
(352, 'Goat Cheese Wheel', 2, 10),
(353, 'Goat Hide', 1, 5),
(354, 'Gold Ingot', 1, 100),
(355, 'Gold Ore', 1, 50),
(356, 'Gourd', 1, 1),
(357, 'Grand Soul Gem', 1, 200),
(358, 'Grand Soul Gem (Filled)', 1, 500),
(359, 'Grand Staff of Charming', 8, 1893),
(360, 'Grand Staff of Repulsion', 8, 1289),
(361, 'Grand Staff of Turning', 8, 1520),
(362, 'Grass Pod', 1, 1),
(363, 'Greater Soul Gem', 1, 100),
(364, 'Greater Soul Gem (Filled)', 1, 0),
(365, 'Green Apple', 1, 3),
(366, 'Grilled Chicked Breast', 1, 4),
(367, 'Grilled Leaks', 1, 2),
(368, 'Grimsever', 14, 350),
(369, 'Guard Armor(Various)', 6, 75),
(370, 'Guard Shield', 6, 40),
(371, 'Guide to All Things Crafting: Smelting', 1, 100),
(372, 'Guide to All Things Crafting: Tanning', 1, 100),
(373, 'Guide to the Skyforge', 1, 250),
(374, 'Guild Masters Armor', 10, 1779),
(375, 'Hagraven Claw', 1, 20),
(376, 'Hagraven Feathers', 1, 20),
(377, 'Hammerfell Garb', 1, 5),
(378, 'Hanging Moss', 1, 1),
(379, 'Hawk Beak', 1, 15),
(380, 'Hawk Feathers', 1, 15),
(381, 'Hawk\'s Egg', 1, 2),
(382, 'Headsman\'s Axe', 11, 15),
(383, 'Hide Armor', 5, 50),
(384, 'Hide Shield', 4, 25),
(385, 'Histcarp', 1, 6),
(386, 'Hoarfrost', 10, 946),
(387, 'Homecooked Meal', 1, 5),
(388, 'Honey Nut Treat', 1, 2),
(389, 'Honeycomb', 1, 5),
(390, 'Honningbrew Mead', 1, 20),
(391, 'Hooded Black Mage Robes', 1, 40),
(392, 'Hooded Monk Robes', 1, 5),
(393, 'Horker and Ash Yam Stew', 1, 9),
(394, 'Horker Loaf', 1, 4),
(395, 'Horker Meat', 1, 3),
(396, 'Horker Stew', 1, 8),
(397, 'Horksbane', 14, 250),
(398, 'Horse Haunch', 2, 4),
(399, 'Horse Hide', 2, 15),
(400, 'Horse Meat', 2, 3),
(401, 'Human Flesh', 1, 1),
(402, 'Human Heart', 1, 0),
(403, 'Hunting Bow', 7, 50),
(404, 'Ice Wolf Pelt', 1, 15),
(405, 'Ice Wraith Bane', 1, 221),
(406, 'Ice Wraith Essence', 1, 96),
(407, 'Ice Wraith Teeth', 1, 30),
(408, 'Imp Stool', 1, 0),
(409, 'Imperial Armor', 35, 100),
(410, 'Imperial Bow', 8, 90),
(411, 'Imperial Crossbow', 15, 150),
(412, 'Imperial Light Armor', 6, 75),
(413, 'Imperial Light Shield', 4, 40),
(414, 'Imperial Shield', 12, 50),
(415, 'Imperial Sword', 10, 23),
(416, 'Imporved Bonemold Shield', 11, 95),
(417, 'Improved Bonemold', 43, 290),
(418, 'Invisibility Potion', 0, 214),
(419, 'Iron Armor', 30, 125),
(420, 'Iron Battleaxe', 20, 55),
(421, 'Iron Dagger', 2, 10),
(422, 'Iron Greatsword', 16, 50),
(423, 'Iron Ingot', 1, 7),
(424, 'Iron Mace', 13, 35),
(425, 'Iron Ore', 1, 2),
(426, 'Iron Shield', 12, 60),
(427, 'Iron Sword', 9, 25),
(428, 'Iron War Axe', 11, 30),
(429, 'Iron Warhammer', 24, 60),
(430, 'Jazbay Crostata', 1, 5),
(431, 'Jazbay Grapes', 1, 1),
(432, 'Jesters Clothes', 1, 450),
(433, 'Jug of Milk', 1, 2),
(434, 'Juniper Berries', 1, 1),
(435, 'Juniper Berry Crostata', 1, 5),
(436, 'Keening', 4, 5),
(437, 'Knife', 1, 1),
(438, 'Large Antlers', 1, 2),
(439, 'Large Decorative Dwemer Strut', 15, 10),
(440, 'Large Dwemer Plate Metal', 2, 15),
(441, 'Large Dwemer Strut', 20, 15),
(442, 'Lavender', 1, 1),
(443, 'Lavender Dumpling', 1, 3),
(444, 'Leather ', 2, 10),
(445, 'Leather Armor', 6, 125),
(446, 'Leather Strips', 1, 3),
(447, 'Leek', 1, 1),
(448, 'Leg of Goat', 1, 3),
(449, 'Leg of Goat Haunch', 1, 4),
(450, 'Lesser Soul Gem', 1, 25),
(451, 'Lesser Soul Gem (Filled)', 1, 80),
(452, 'Long Bow', 5, 30),
(453, 'Long Taffy Treat', 1, 3),
(454, 'Lotus Extract', 1, 86),
(455, 'Luna Moth Wing', 1, 5),
(456, 'Mace of Molag Bal(Mace)', 18, 1257),
(457, 'Mage Robes', 2, 5),
(458, 'Magicka Poison', 1, 162),
(459, 'Malachite Ore', 1, 30),
(460, 'Malign Aversion to Fire', 1, 266),
(461, 'Malign Aversion to Frost', 1, 221),
(462, 'Malign Aversion to Magic', 1, 443),
(463, 'Malign Aversion to Shock', 1, 221),
(464, 'Malign Magicka Poison', 1, 348),
(465, 'Mammoth Cheese Bowl', 1, 3),
(466, 'Mammoth Snout', 3, 6),
(467, 'Mammoth Steak', 2, 8),
(468, 'Master Robes', 1, 1500),
(469, 'Matze', 1, 5),
(470, 'Mehrunes\' Razor(Dagger)', 3, 860),
(471, 'Miner\'s Clothes', 1, 2),
(472, 'Minor Staff of Turning', 8, 556),
(473, 'Monks Robes', 1, 5),
(474, 'Moon Sugar', 1, 50),
(475, 'Moonstone Ore', 1, 30),
(476, 'Mora Tapinella', 1, 4),
(477, 'Mourner\'s Clothes', 1, 2),
(478, 'Mudcrab Chitin', 1, 2),
(479, 'Mudcrab Legs', 1, 3),
(480, 'Namira\'s Rot', 1, 0),
(481, 'Necromancer Robes', 1, 40),
(482, 'Netch Jelly', 1, 20),
(483, 'Nettlebane', 10, 5),
(484, 'Nightingale Armor', 12, 1553),
(485, 'Nightingale Blade', 13, 1424),
(486, 'Nightingale Bow', 13, 1409),
(487, 'Nightshade', 1, 8),
(488, 'Nirnroot', 1, 10),
(489, 'Noble Clothes', 3, 100),
(490, 'Nord Hero Battle Axe', 20, 300),
(491, 'Nord Hero Bow', 7, 200),
(492, 'Nord Hero Greatsword', 16, 250),
(493, 'Nord Hero Sword', 9, 135),
(494, 'Nord Hero War Axe', 11, 165),
(495, 'Nord Mead', 1, 5),
(496, 'Nordic Barnacle', 1, 5),
(497, 'Nordic Battleaxe', 23, 650),
(498, 'Nordic Bow', 11, 580),
(499, 'Nordic Carved Armor', 37, 1600),
(500, 'Nordic Crossbow', 21, 1250),
(501, 'Nordic Dagger', 4, 115),
(502, 'Nordic Greatsword', 19, 585),
(503, 'Nordic Mace', 16, 410),
(504, 'Nordic Shield', 10, 335),
(505, 'Nordic Sword', 12, 290),
(506, 'Nordic War Axe', 14, 350),
(507, 'Nordic Warhammer', 27, 700),
(508, 'Notched Pickaxe', 10, 150),
(509, 'Novice Robes', 1, 250),
(510, 'Okin', 11, 150),
(511, 'Orange Dartwing', 1, 1),
(512, 'Orcish Armor', 35, 1000),
(513, 'Orcish Battleaxe', 25, 165),
(514, 'Orcish Bow', 9, 150),
(515, 'Orcish Crossbow', 16, 325),
(516, 'Orcish Dagger', 3, 30),
(517, 'Orcish Greatsword', 18, 75),
(518, 'Orcish Mace', 15, 105),
(519, 'Orcish Shield', 14, 500),
(520, 'Orcish Sword', 11, 75),
(521, 'Orcish War Axe', 13, 90),
(522, 'Orcish Warhammer', 26, 180),
(523, 'Orichalcum Ingot', 1, 45),
(524, 'Orichalcum Ore', 1, 20),
(525, 'Paralysis Poison', 0, 132),
(526, 'Pearl', 1, 2),
(527, 'Petty Soul Gem', 1, 10),
(528, 'Petty Soul Gem(Filled)', 1, 40),
(529, 'Pheasant Breast', 1, 3),
(530, 'Pheasant Roast', 1, 4),
(531, 'Philter of Alteration', 1, 165),
(532, 'Philter of Conjuration', 1, 165),
(533, 'Philter of Destruction', 1, 165),
(534, 'Philter of Enhanced Stamina', 1, 311),
(535, 'Philter of Extra Magicka', 1, 311),
(536, 'Philter of haggling', 1, 180),
(537, 'Philter of Health', 1, 311),
(538, 'Philter of Illusion', 1, 165),
(539, 'Philter of Light Feet', 1, 165),
(540, 'Philter of Lockpicking', 1, 165),
(541, 'Philter of Pickpocketing', 1, 165),
(542, 'Philter of Resist Fire', 1, 207),
(543, 'Philter of Resist Frost', 1, 207),
(544, 'Philter of Resist Magic', 1, 207),
(545, 'Philter of Resist Shock', 1, 207),
(546, 'Philter of Restoration', 1, 165),
(547, 'Philter of Strength', 1, 467),
(548, 'Philter of the Beserker', 1, 207),
(549, 'Philter of the Defender', 1, 96),
(550, 'Philter of the Phantom', 1, 50),
(551, 'Philter of the Warrior', 1, 207),
(552, 'Philter of True Shot', 1, 207),
(553, 'Pickaxe', 10, 5),
(554, 'Pine Thrush Egg', 1, 2),
(555, 'Poacher\'s Axe', 10, 32),
(556, 'Poison', 1, 103),
(557, 'Poison Bloom', 1, 5),
(558, 'Potato', 1, 1),
(559, 'Potato Bread', 1, 2),
(560, 'Potato Soup', 1, 5),
(561, 'Potent Aversion to Fire', 1, 215),
(562, 'Potent Aversion to Frost', 1, 179),
(563, 'Potent Aversion to Magic', 1, 358),
(564, 'Potent Aversion to Shock', 1, 179),
(565, 'Potent Magicka Poison', 1, 235),
(566, 'Potent Poison', 1, 149),
(567, 'Potent Stamina Poison', 1, 235),
(568, 'Potion of Alteration', 1, 49),
(569, 'Potion of Blood', 1, 75),
(570, 'Potion of Conjuration', 1, 49),
(571, 'Potion of Cure Disease', 0, 79),
(572, 'Potion of Cure Poison', 0, 31),
(573, 'Potion of Destruction', 1, 49),
(574, 'Potion of Enhanced Stamina', 1, 67),
(575, 'Potion of Extra Magicka', 1, 67),
(576, 'Potion of Extreme Healing', 0, 123),
(577, 'Potion of Extreme Magicka', 0, 148),
(578, 'Potion of Extreme Stamina', 0, 148),
(579, 'Potion of Extreme Well-Being', 1, 238),
(580, 'Potion of Haggling', 1, 84),
(581, 'Potion of Healing', 0, 36),
(582, 'Potion of Health', 1, 67),
(583, 'Potion of Illusion', 1, 49),
(584, 'Potion of Invisibility', 1, 214),
(585, 'Potion of Light Feet', 1, 49),
(586, 'Potion of Lockpicking', 1, 49),
(587, 'Potion of Magicka', 0, 44),
(588, 'Potion of Minor Healing', 0, 17),
(589, 'Potion of Minor Magicka', 0, 20),
(590, 'Potion of Minor Stamina', 0, 20),
(591, 'Potion of Minor Well-Being', 1, 31),
(592, 'Potion of Pickpocketing', 1, 49),
(593, 'Potion of Plentiful Healing', 0, 57),
(594, 'Potion of Plentiful Magicka', 0, 69),
(595, 'Potion of Plentiful Stamina', 0, 69),
(596, 'Potion of Plentiful Well-Being', 1, 139),
(597, 'Potion of Resist Fire', 1, 96),
(598, 'Potion of Resist Frost', 1, 96),
(599, 'Potion of Resist Magic', 1, 96),
(600, 'Potion of Resist Shock', 1, 96),
(601, 'Potion of Restoration', 1, 49),
(602, 'Potion of Stamina', 0, 44),
(603, 'Potion of Strength', 1, 170),
(604, 'Potion of the Beserker', 1, 96),
(605, 'Potion of the Defender', 1, 45),
(606, 'Potion of the Warrior', 1, 96),
(607, 'Potion of True Shot', 1, 96),
(608, 'Potion of Ultimate Healing', 0, 251),
(609, 'Potion of Ultimate Magicka', 0, 150),
(610, 'Potion of Ultimate Stamina', 0, 150),
(611, 'Potion of Ultimate Well-Being', 1, 269),
(612, 'Potion of Vigorous Healing', 0, 79),
(613, 'Potion of Vigorous Magicka', 0, 95),
(614, 'Potion of Vigorous Stamina', 0, 95),
(615, 'Potion of Vigorous Well-Being', 1, 195),
(616, 'Potion of Waterbreathing', 1, 100),
(617, 'Potion of Waterwalking', 1, 500),
(618, 'Potion of Well-Being', 1, 82),
(619, 'Powdered Mammoth Tusk', 1, 2),
(620, 'Purple Mountain Flower', 1, 2),
(621, 'Quicksilver Ingot', 1, 60),
(622, 'Quicksilver Ore', 1, 25),
(623, 'Rabbit Haunch', 1, 3),
(624, 'Ragged Clothes', 1, 1),
(625, 'Raw Beef', 1, 4),
(626, 'Raw Rabbit Leg', 1, 2),
(627, 'Red Apple', 1, 3),
(628, 'Red Eagle\'s Bane', 15, 345),
(629, 'Red Eagle\'s Fury', 12, 97),
(630, 'Red Mountain Flower', 1, 2),
(631, 'Redguard Clothes', 1, 5),
(632, 'Redwater Skooma', 1, 20),
(633, 'Refined Malachite', 1, 100),
(634, 'Refined Moonstone', 1, 75),
(635, 'Regen Health Potion', 0, 311),
(636, 'Regen Magicka Potion', 0, 311),
(637, 'Regen Stamina Potion', 0, 311),
(638, 'Resist Fire Potion', 0, 96),
(639, 'Resist Frost Potion', 0, 96),
(640, 'Resist Magic Potion', 0, 90),
(641, 'Resist Poison Potion', 0, 90),
(642, 'Resist Shock Potion', 0, 96),
(643, 'River Betty', 1, 15),
(644, 'Robes of Alteration', 1, 100),
(645, 'Robes of Conjuration', 1, 100),
(646, 'Robes of Destruction', 1, 100),
(647, 'Robes of Illusion', 1, 100),
(648, 'Robes of Restoration', 1, 100),
(649, 'Rock Warbler Egg', 1, 2),
(650, 'Roughspun Tunic', 1, 1),
(651, 'Rueful Axe(Battle Axe)', 10, 1183),
(652, 'Sabre Cat Pelt', 2, 25),
(653, 'Sabre Cat Tooth', 1, 2),
(654, 'Sack of Flour', 1, 1),
(655, 'Salmon Meat', 1, 3),
(656, 'Salmon Roe', 1, 5),
(657, 'Salmon Steak', 1, 4),
(658, 'Salt Pile', 1, 2),
(659, 'Sanguine Rose(Staff)', 10, 2087),
(660, 'Saviors Hide', 6, 5012),
(661, 'Scaled Armor', 6, 350),
(662, 'Scaly Pholiota', 1, 4),
(663, 'Scathecraw', 1, 1),
(664, 'Scimitar', 10, 5),
(665, 'Seared Slaughterfish', 1, 5),
(666, 'Shein', 1, 10),
(667, 'Shield of Ysgramor', 12, 1715),
(668, 'Shiv', 2, 5),
(669, 'Shrouded Armor', 7, 373),
(670, 'Shrouded Robes', 1, 250),
(671, 'Silver Greatsword', 12, 160),
(672, 'Silver Ingot', 1, 50),
(673, 'Silver Ore', 1, 25),
(674, 'Silver Sword', 7, 100),
(675, 'Silverside Perch', 1, 15),
(676, 'Skaal Armor', 5, 100),
(677, 'Skeever Tail', 1, 3),
(678, 'Skooma', 1, 20),
(679, 'Skull of Corruption(Staff)', 10, 1680),
(680, 'Skyforge Steel Battleaxe', 21, 150),
(681, 'Skyforge Steel Dagger', 3, 25),
(682, 'Skyforge Steel Greatsword', 17, 140),
(683, 'Skyforge Steel Mace', 14, 100),
(684, 'Skyforge Steel Sword', 10, 70),
(685, 'Skyforge Steel War Axe', 12, 80),
(686, 'Skyforge Steel Warhammer', 25, 175),
(687, 'Slaughterfish Egg', 1, 3),
(688, 'Slaughterfish Scales', 1, 3),
(689, 'Sleeping Tree Sap', 1, 100),
(690, 'Sliced Eidar Cheese', 2, 10),
(691, 'Sliced Goat Cheese', 2, 8),
(692, 'Slow Poison', 0, 90),
(693, 'Small Antlers', 1, 2),
(694, 'Small Dwemer plate metal', 2, 15),
(695, 'Small Pearl', 1, 2),
(696, 'Snow Bear Pelt', 3, 75),
(697, 'Snow Fox Pelt', 1, 7),
(698, 'Snow Sabre Cat Pelt', 2, 40),
(699, 'Snowberries', 1, 4),
(700, 'Snowberry Crostata', 1, 5),
(701, 'Solid Dwemer metal', 25, 25),
(702, 'Solution of Enhanced Stamina', 1, 226),
(703, 'Solution of Extra Magicka', 1, 226),
(704, 'Solution of Health', 1, 226),
(705, 'Solution of Strength', 1, 365),
(706, 'Soul Husk', 1, 1),
(707, 'Soul Husk Extract', 1, 254),
(708, 'Soulrender', 10, 1000),
(709, 'Spawn Ash', 1, 20),
(710, 'Spell Tome: Ash Rune', 1, 635),
(711, 'Spell Tome: Ash Spell', 1, 425),
(712, 'Spell Tome: Banish Daedra', 1, 346),
(713, 'Spell Tome: Bound Battleaxe', 1, 99),
(714, 'Spell Tome: Bound Bow', 1, 335),
(715, 'Spell Tome: Bound Dagger', 1, 38),
(716, 'Spell Tome: Bound Sword', 1, 49),
(717, 'Spell Tome: Calm', 1, 91),
(718, 'Spell Tome: Candlelight', 1, 44),
(719, 'Spell Tome: Chain Lightning', 1, 390),
(720, 'Spell Tome: Circle of Protection', 1, 650),
(721, 'Spell Tome: Clairvoyance', 1, 50),
(722, 'Spell Tome: Close Wounds', 1, 360),
(723, 'Spell Tome: Command Daedra', 1, 660),
(724, 'Spell Tome: Conjure Ash Spawn', 1, 338),
(725, 'Spell Tome: Conjure Boneman', 1, 75),
(726, 'Spell Tome: Conjure Dremora Lord', 1, 730),
(727, 'Spell Tome: Conjure Familiar', 1, 49),
(728, 'Spell Tome: Conjure Flame Atronach', 1, 99),
(729, 'Spell Tome: Conjure Frost Atronach', 1, 347),
(730, 'Spell Tome: Conjure Mistman', 1, 75),
(731, 'Spell Tome: Conjure Seeker', 1, 307),
(732, 'Spell Tome: Conjure Storm Atronach', 1, 690),
(733, 'Spell Tome: Conjure Wrathman', 1, 75),
(734, 'Spell Tome: Courage', 1, 46),
(735, 'Spell Tome: Detect Dead', 1, 600),
(736, 'Spell Tome: Detect Life', 1, 332),
(737, 'Spell Tome: Dread Zombie', 1, 630),
(738, 'Spell Tome: Ebonyflesh', 1, 650),
(739, 'Spell Tome: Equilibrium', 1, 250),
(740, 'Spell Tome: Expel Daedra', 1, 620),
(741, 'Spell Tome: Fast Healing ', 1, 94),
(742, 'Spell Tome: Fear', 1, 80),
(743, 'Spell Tome: Fire Rune', 1, 90),
(744, 'Spell Tome: Fireball', 1, 345),
(745, 'Spell Tome: Firebolt', 1, 96),
(746, 'Spell Tome: Flame Cloak', 1, 325),
(747, 'Spell Tome: Flaming Familiar', 1, 250),
(748, 'Spell Tome: Freeze', 1, 100),
(749, 'Spell Tome: Frenzy', 1, 330),
(750, 'Spell Tome: Frenzy Rune', 1, 310),
(751, 'Spell Tome: Frost Cloak', 1, 340),
(752, 'Spell Tome: Frost Rune', 1, 92),
(753, 'Spell Tome: Frostbite', 1, 47),
(754, 'Spell Tome: Fury', 1, 43),
(755, 'Spell Tome: Grand Healing', 1, 680),
(756, 'Spell Tome: Greater Ward', 1, 341),
(757, 'Spell Tome: Heal Other', 1, 300),
(758, 'Spell Tome: Heal Undead', 1, 370),
(759, 'Spell Tome: Healing Hands', 1, 89),
(760, 'Spell Tome: Ice Spike', 1, 96),
(761, 'Spell Tome: Ice Storm', 1, 360),
(762, 'Spell Tome: Icy Spear', 1, 725),
(763, 'Spell Tome: Ignite', 1, 100),
(764, 'Spell Tome: Incinerate', 1, 710),
(765, 'Spell Tome: Invisibility', 1, 625),
(766, 'Spell Tome: Ironflesh', 1, 341),
(767, 'Spell Tome: Lesser Ward', 1, 45),
(768, 'Spell Tome: Lightning Bolt', 1, 95),
(769, 'Spell Tome: Lightning Rune', 1, 93),
(770, 'Spell Tome: Magelight', 1, 87),
(771, 'Spell Tome: Muffle', 1, 88),
(772, 'Spell Tome: Necromantic Healing', 1, 115),
(773, 'Spell Tome: Oakflesh', 1, 44),
(774, 'Spell Tome: Pacify', 1, 610),
(775, 'Spell Tome: Paralyze', 1, 685),
(776, 'Spell Tome: Poison Rune', 1, 290),
(777, 'Spell Tome: Raise Zombie', 1, 49),
(778, 'Spell Tome: Rally', 1, 300),
(779, 'Spell Tome: Reanimate Corpse', 1, 99),
(780, 'Spell Tome: Repel Lesser Undead', 1, 333),
(781, 'Spell Tome: Repel Undead', 1, 655),
(782, 'Spell Tome: Revenant', 1, 340),
(783, 'Spell Tome: Rout', 1, 653),
(784, 'Spell Tome: Soul Trap', 1, 100),
(785, 'Spell Tome: Sparks', 1, 46),
(786, 'Spell Tome: Steadfast Ward', 1, 92),
(787, 'Spell Tome: Stendarr\'s Aura', 1, 335),
(788, 'Spell Tome: Stoneflesh', 1, 95),
(789, 'Spell Tome: Storm Cloak', 1, 355),
(790, 'Spell Tome: Sun Fire', 1, 80),
(791, 'Spell Tome: Telekenisis', 1, 326),
(792, 'Spell Tome: Thunderbolt', 1, 750),
(793, 'Spell Tome: Transmute', 1, 200),
(794, 'Spell Tome: Turn Greater Undead', 1, 664),
(795, 'Spell Tome: Turn Lesser Undead', 1, 89),
(796, 'Spell Tome: Turn Undead', 1, 323),
(797, 'Spell Tome: Vampires Bane', 1, 340),
(798, 'Spell Tome: Wall of Flames', 1, 680),
(799, 'Spell Tome: Wall of Frost', 1, 700),
(800, 'Spell Tome: Wall of Storms', 1, 725),
(801, 'Spell Tome: Waterbreathing', 1, 340),
(802, 'Spell Tome: Whirlwind Cloak', 1, 395),
(803, 'Spellbreaker', 12, 227),
(804, 'Spiced Beef', 1, 4),
(805, 'Spiced Wine', 1, 7),
(806, 'Spider Egg', 1, 5),
(807, 'Spriggan Sap', 1, 15),
(808, 'Staf of Firebolts', 8, 456),
(809, 'Staff of Banishing', 8, 926),
(810, 'Staff of Calm', 8, 1153),
(811, 'Staff of Chain Lightning', 8, 1494),
(812, 'Staff of Courage', 8, 79),
(813, 'Staff of Daedric Command', 8, 926),
(814, 'Staff of Dread Zombies', 8, 1248),
(815, 'Staff of Expulsion', 8, 2092),
(816, 'Staff of Fear', 8, 2443),
(817, 'Staff of Fireballs', 8, 1309),
(818, 'Staff of Flame Wall', 8, 1310),
(819, 'Staff of Flames', 8, 183),
(820, 'Staff of Frenzy', 8, 1149),
(821, 'Staff of Frost Wall', 8, 1468),
(822, 'Staff of Frostbite', 8, 198),
(823, 'Staff of Fury', 8, 803),
(824, 'Staff of Ice Spikes', 8, 511),
(825, 'Staff of Ice Storms', 8, 1401),
(826, 'Staff of Icy Spear', 8, 2931),
(827, 'Staff of Incineration', 8, 2750),
(828, 'Staff of Inspiration', 8, 317),
(829, 'Staff of Lightning Bolts', 8, 538),
(830, 'Staff of Magelight', 8, 239),
(831, 'Staff of Magnus', 8, 2011),
(832, 'Staff of Mending', 8, 613),
(833, 'Staff of Paralysis', 8, 3965),
(834, 'Staff of Reanimation', 8, 949),
(835, 'Staff of Repulsion', 8, 675),
(836, 'Staff of Revenants', 8, 824),
(837, 'Staff of Soul Trapping', 8, 986),
(838, 'Staff of Sparks', 8, 218),
(839, 'Staff of Storm Wall', 8, 1531),
(840, 'Staff of Tandil', 8, 2530),
(841, 'Staff of the Familiar', 8, 926),
(842, 'Staff of the Flame Atronach', 8, 727),
(843, 'Staff of the Frost Atronach', 8, 1106),
(844, 'Staff of the Healing Hand', 8, 198),
(845, 'Staff of the Storm Atronach', 8, 1656),
(846, 'Staff of Turning', 8, 1036),
(847, 'Staff of Zombies', 8, 449),
(848, 'Stalhrim', 1, 200),
(849, 'Stalhrim Battleaxe', 25, 2150),
(850, 'Stalhrim Bow', 15, 1800),
(851, 'Stalhrim Dagger', 5, 395),
(852, 'Stalhrim Greatsword', 21, 1970),
(853, 'Stalhrim Heavy Armor', 38, 2200),
(854, 'Stalhrim Light Armor', 7, 925),
(855, 'Stalhrim Mace', 18, 1375),
(856, 'Stalhrim Shield', 10, 600),
(857, 'Stalhrim Sword', 14, 985),
(858, 'Stalhrim War Axe', 16, 1180),
(859, 'Stalhrim Warhammer', 29, 2850),
(860, 'Stamina Poison', 1, 162),
(861, 'Steamed Mudcrab Legs', 1, 4),
(862, 'Steel Armor', 25, 275),
(863, 'Steel Battleaxe', 21, 100),
(864, 'Steel Dagger', 3, 18),
(865, 'Steel Greatsword', 17, 90),
(866, 'Steel Ingot', 1, 20),
(867, 'Steel Mace', 14, 65),
(868, 'Steel Plate Armor', 38, 625),
(869, 'Steel Shield', 12, 150),
(870, 'Steel Sword', 10, 45),
(871, 'Steel War Axe', 12, 55),
(872, 'Steel Warhammer', 25, 110),
(873, 'Stormcloak Officer', 8, 35),
(874, 'Stormfang', 17, 1175),
(875, 'Studded Armor', 6, 75),
(876, 'Studded Imperial Armor', 6, 125),
(877, 'Sujamma', 1, 10),
(878, 'Swamp Fungal Pod', 1, 5),
(879, 'Sweet Roll', 1, 2),
(880, 'Taproot', 1, 15),
(881, 'Targe of the Blooded', 8, 300),
(882, 'Tavern Clothes', 1, 2),
(883, 'Thalmor Robes', 1, 100),
(884, 'The Longhammer', 18, 90),
(885, 'The Pale Blade', 15, 452),
(886, 'Thieves Guild', 7, 665),
(887, 'Thistle Branch', 1, 1),
(888, 'Tomato', 1, 4),
(889, 'Tomato Soup', 1, 5),
(890, 'Torchbug Thorax', 1, 1),
(891, 'Trama Root', 1, 1),
(892, 'Troll Fat', 1, 15),
(893, 'Trollsbane', 25, 60),
(894, 'Tundra Cotton', 1, 1),
(895, 'Vale Deer Hide', 2, 10),
(896, 'Vale Sabre Cat Pelt', 2, 10),
(897, 'Vampire Armor', 5, 175),
(898, 'Vampire Clothes', 1, 5),
(899, 'Vampire Dust', 1, 25),
(900, 'Vampire Royal ', 9, 250),
(901, 'Vegetable Soup', 1, 5),
(902, 'Velvet LeChance', 1, 5),
(903, 'Velvet LeChance', 1, 5),
(904, 'Venison', 2, 4),
(905, 'Venison Chop', 2, 5),
(906, 'Venison Stew', 1, 8),
(907, 'Virulent Poison', 1, 221),
(908, 'Virulent Stamina Poison', 1, 348),
(909, 'Void Salts', 1, 125),
(910, 'Volendrung(Warhammer)', 26, 1843),
(911, 'Wabbajak(Staff)', 10, 1211),
(912, 'Waterbreathing Potion', 0, 46),
(913, 'Weak Aversion to Fire', 1, 116),
(914, 'Weak Aversion to Frost', 1, 96),
(915, 'Weak Aversion to Magic', 1, 193),
(916, 'Weak Aversion to Shock', 1, 96),
(917, 'Weak Magicka Poison', 1, 92),
(918, 'Weak Poison', 1, 58),
(919, 'Weak Stamina Poison', 1, 92),
(920, 'Weakness to Fire Poison', 0, 116),
(921, 'Weakness to Frost Poison', 0, 96),
(922, 'Weakness to Magic Poison', 0, 193),
(923, 'Weakness to Poison Poison', 0, 100),
(924, 'Weakness to Shock Poison', 0, 193),
(925, 'Wheat', 1, 5),
(926, 'White Cap', 1, 0),
(927, 'White Gold Tower', 1, 5),
(928, 'White-Gold Tower', 1, 5),
(929, 'Windshear', 10, 40),
(930, 'Wine', 1, 7),
(931, 'Wisp Wrappings', 1, 2),
(932, 'Wolf Armor', 20, 55),
(933, 'Wolf Pelt', 1, 10),
(934, 'Woodcutter\'s Axe', 10, 5),
(935, 'Wooden Sword', 3, 25),
(936, 'Worn Shrouded Armor', 6, 80),
(937, 'Wuuthrad', 25, 2000),
(938, 'Yellow Mountain Flower', 1, 2),
(939, 'Zephyr', 10, 670);

-- --------------------------------------------------------

--
-- Table structure for table `perks`
--

CREATE TABLE `perks` (
  `PerkID` int(11) NOT NULL,
  `PerkName` varchar(255) NOT NULL,
  `PerkDesc` varchar(255) NOT NULL,
  `PerkRequired` varchar(255) NOT NULL,
  `PerkTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perks`
--

INSERT INTO `perks` (`PerkID`, `PerkName`, `PerkDesc`, `PerkRequired`, `PerkTypeID`) VALUES
(1, 'Novice Alteration', 'Cast Novice level Alteration spells for half magicka', 'None', 1),
(2, 'Alteration Dual Casting', 'Dual casting an Alteration spell overcharges the effects into an even more powerful version(+1 turn duration)', 'Alteration 20, Novice Alteration', 1),
(3, 'Apprentice Alteration', 'Cast Apprentice level Alteration spells for half magicka', 'Alteration 25, Novice Alteration', 1),
(4, 'Mage Armor(3)', 'Protection spells like Stoneflesh are +10/+20/+30 more defense if not wearing armor', 'Alteration 30/50/70, Apprentice Alteration', 1),
(5, 'Magic Resistance(3)', 'Blocks 10%/20%/30% of all spells attacking you, does not affect friendly spells from affecting the caster', 'Alteration 30/50/70, Apprentice Alteration', 1),
(6, 'Adept Alteration', 'Cast Adept level Alteration spells for half magicka', 'Alteration 50, Apprentice Alteration', 1),
(7, 'Stability', 'Alteration spells have greater duration(+1 turn duration)', 'Alteration 70, Adept Alteration', 1),
(8, 'Expert Alteration', 'Cast Expert level Alteration spells for half magicka', 'Alteration 75, Adept Alteration', 1),
(9, 'Atronach', 'Gain 5 mana back from all magic attacks at you as well as resist 10 points of magic damage(+10 magic resist)', 'Alteration 100, Expert Alteration', 1),
(10, 'Master Alteration', 'Cast Master level Alteration spells for half magicka', 'Alteration 100, Expert Alteration', 1),
(11, 'Novice Conjuration', 'Cast Novice level Conjuration spells for half magicka', 'None', 2),
(12, 'Conjuration Dual Casting', 'Dual casting a Conjuration spell overcharges the effects into a longer lasting version(+1 turn duration)', 'Conjuration 20, Novice Conjuration', 2),
(13, 'Mystic Binding', 'Bound weapons do more damage(+10 more damage)', 'Conjuration 20, Novice Conjuration', 2),
(14, 'Apprentice Conjuration', 'Cast Apprentice level Conjuration spells for half magicka', 'Conjuration 25, Novice Conjuration', 2),
(15, 'Soul Stealer', 'Bound weapons cast Soul Trap on targets', 'Conjuration 30, Mystic Binding', 2),
(16, 'Necromancy', 'Greater duration for reanimated undead(+1 turn duration)', 'Conjuration 40, Novice Conjuration', 2),
(17, 'Atromancy', 'Double duration for conjured Atronachs and Dremora Lords(+2 turn duration)', 'Conjuration 40, Apprentice Conjuration', 2),
(18, 'Oblivion Binding', 'Bound weapons will banish summoned creatures and turn raised ones', 'Conjuration 50, Soul Stealer', 2),
(19, 'Adept Conjuration', 'Cast Adept level Conjuration spells for half magicka', 'Conjuration 50, Apprentice Conjuration', 2),
(20, 'Dark Souls', 'Reanimated undead have 100 points more health', 'Conjuration 70, Necromancy', 2),
(21, 'Expert Conjuration', 'Cast Expert level Conjuration spells for half magicka', 'Conjuration 75, Adept Conjuration', 2),
(22, 'Elemental Potency', 'Conjured Atronachs are 50% more powerful', 'Conjuration 80, Atromancy', 2),
(23, 'Twin Souls', 'The player can have two conjured creatures', 'Conjuration 100, Elemental Potency OR Dark Souls', 2),
(24, 'Master Conjuration', 'Cast Master level Conjuration spells for half magicka', 'Conjuration 100, Expert Conjuration', 2),
(25, 'Novice Destruction', 'Cast Novice level Destruction spells for half magicka', 'None', 3),
(26, 'Destruction Dual Casting', 'Dual casting a Destruction spell overcharges the effects into an even more powerful version(+10 damage)', 'Destruction 20, Novice Destruction', 3),
(27, 'Apprentice Destruction', 'Cast Apprentice level Destruction spells for half magicka', 'Destruction 25, Novice Destruction', 3),
(28, 'Augmented Flames', 'Fire spells do 25% more damage (Affects all fire weapon enchantments, not just self-enchanted ones.)', 'Destruction 30, Novice Destruction', 3),
(29, 'Augmented Frost', 'Frost spells do 25% more damage (Affects all frost weapon enchantments, not just self-enchanted ones.)', 'Destruction 30, Novice Destruction', 3),
(30, 'Augmented Shock', 'Shock spells do 25% more damage (Affects all shock weapon enchantments, not just self-enchanted ones.)', 'Destruction 30, Novice Destruction', 3),
(31, 'Adept Destruction', 'Cast Adept level Destruction spells for half magicka', 'Destruction 50, Apprentice Destruction', 3),
(32, 'Intense Flames', 'Fire damage causes targets to flee if their health is low', 'Destruction 50, Augmented Flames', 3),
(33, 'Deep Freeze', 'Frost damage paralyzes targets if their health is low', 'Destruction 60, Augmented Frost', 3),
(34, 'Disintigrate', 'Shock damage disintegrates targets if their health is low', 'Destruction 70, Augmented Shock', 3),
(35, 'Disintigrate', 'Shock damage disintegrates targets if their health is low', 'Destruction 70, Augmented Shock', 3),
(36, 'Expert Destruction', 'Cast Expert level Destruction spells for half magicka', 'Destruction 75, Adept Destruction', 3),
(37, 'Master Destruction', 'Cast Master level Destruction spells for half magicka', 'Destruction 100, Expert Destruction', 3),
(38, 'Novice Illusion', 'Cast Novice level Illusion spells for half magicka', 'None', 4),
(39, 'Illusion Dual Casting', 'Dual casting a Illusion spell overcharges the effects into an even more powerful version(+5 levels)', 'Illusion 20, Novice Illusion', 4),
(40, 'Animage', 'Illusion spells now work on higher level animals (+8 levels)', 'Illusion 20, Novice Illusion', 4),
(41, 'Apprentice Illusion', 'Cast Apprentice level Illusion spells for half magicka', 'Illusion 25, Novice Illusion', 4),
(42, 'Hypnotic Gaze', 'Calm spells now work on higher level opponents (+8 levels)', 'Illusion 30, Novice Illusion', 4),
(43, 'Kindred Mage', 'All Illusion spells work on higher level people (+10 levels)', 'Illusion 40, Animage', 4),
(44, 'Adept Illusion', 'Cast Adept level Illusion spells for half magicka', 'Illusion 50, Apprentice Illusion', 4),
(45, 'Aspect of Terror', 'Fear spells now work on higher level opponents (+10 levels)', 'Illusion 50, Hypnotic Gaze', 4),
(46, 'Quiet Casting', 'All spells cast are silent to others', 'Illusion 50, Kindred Mage', 4),
(47, 'Rage', 'Frenzy spells now work on higher level opponents (+12 levels)', 'Illusion 70, Aspect of Terror', 4),
(48, 'Expert Illusion', 'Cast Expert level Illusion spells for half magicka', 'Illusion 75, Adept Illusion', 4),
(49, 'Master of the Mind', 'Illusion spells work on undead, daedra and automatons', 'Illusion 90, Rage, Quiet Casting', 4),
(50, 'Master Illusion', 'Cast Master level Illusion spells for half magicka', 'Illusion 100, Expert Illusion', 4),
(51, 'Novice Restoration', 'Cast Novice level Restoration spells for half magicka', 'None', 5),
(52, 'Restoration Dual Casting', 'Dual casting a Restoration spell overcharges the effects into an even more powerful version(+10 healing)', 'Restoration 20, Novice Restoration', 5),
(53, 'Regeneration', 'Healing spells cure 50% more', 'Restoration 20, Novice Restoration', 5),
(54, 'Apprentice Restoration', 'Cast Apprentice level Restoration spells for half magicka', 'Restoration 25, Novice Restoration', 5),
(55, 'Recovery (2)', 'Magicka regenerates 3/5 additional points per turn', 'Restoration 30/60, Novice Restoration', 5),
(56, 'Respite', 'Healing spells also restore stamina(same amount of points too)', 'Restoration 40, Novice Restoration', 5),
(57, 'Adept Restoration', 'Cast Adept level Restoration spells for half magicka', 'Restoration 50, Apprentice Restoration', 5),
(58, 'Ward Absorb', 'Wards casted negate 5 more spell damage as well as gain 10 mana back when a spell hits you with ward up', 'Restoration 60, Novice Restoration', 5),
(59, 'Expert Restoration', 'Cast Expert level Restoration spells for half magicka', 'Restoration 75, Adept Restoration', 5),
(60, 'Avoid Death', 'Once a day, heals 250 points automatically if the caster falls below 10% health', 'Restoration 90, Recovery', 5),
(61, 'Master Restoration', 'Cast Master level Restoration spells for half magicka', 'Restoration 100, Expert Restoration', 5),
(62, 'Enchanter(5)', 'New enchantments are 20/40/60/80/100% stronger (+20% per rank)', 'Enchanting 0/20/40/60/80', 6),
(63, 'Soul Squeezer', 'Soul gems provide extra magicka for recharging(+3 recharge ability for every soul gem)', 'Enchanting 20, Enchanter', 6),
(64, 'Fire Enchanter', 'Fire enchantments on weapons and armor are 25% stronger', 'Enchanting 30, Enchanter', 6),
(65, 'Soul Siphon', 'Death Blows on creatures recharge 5 charges for your equipped enchanted weapon', 'Enchanting 40, Soul Squeezer', 6),
(66, 'Frost Enchanter', 'Frost enchantments on weapons and armor are 25% stronger', 'Enchanting 40, Fire Enchanter', 6),
(67, 'Storm Enchanter', 'Shock enchantments on weapons and armor are 25% stronger', 'Enchanting 50, Frost Enchanter', 6),
(68, 'Corpus Enchanter', 'Health, magicka and stamina enchantments on armor are 25% stronger', 'Enchanting 70, Enchanter', 6),
(69, 'Extra Enchanter', 'Can put two enchantments on the same item', 'Enchanting 100, Storm Enchanter or Corpus Enchanter', 6),
(70, 'Steel Smithing', 'Can create Steel armor and weapons at forges, and improve them', 'None', 7),
(71, 'Elven Smithing', 'Can create Elven armor and weapons at forges, and improve them', 'Smithing 30, Steel Smithing', 7),
(72, 'Dwarven Smithing', 'Can create Dwarven armor and weapons at forges, and improve them', 'Smithing 30, Steel Smithing', 7),
(73, 'Advanced Armors', 'Can create Scaled and Steel Plate armor at forges, and improve them', 'Smithing 50, Elven Smithing', 7),
(74, 'Orcish Smithing', 'Can create Orcish armor and weapons at forges, and improve them', 'Smithing 50, Dwarven Smithing', 7),
(75, 'Arcance Smithing', 'Enchanted weapons and armor can now be improved', 'Smithing 60, Steel Smithing', 7),
(76, 'Glass Smithing', 'Can create Glass armor and weapons at forges, and improve them', 'Smithing 70, Advanced Armors', 7),
(77, 'Ebony Smithing', 'Can create Ebony armor and weapons at forges, and improve them', 'Smithing 70, Orcish Smithing', 7),
(78, 'Daedric Smithing', 'Can create Daedric armor and weapons at forges, and improve them', 'Smithing 90, Ebony Smithing', 7),
(79, 'Dragon Smithing', 'Can create Dragon armor and weapons at forges, and improve them', 'Smithing 100, Daedric Smithing or Glass Smithing', 7),
(80, 'Juggernaut(1-5)', 'Increase armor rating for Heavy Armor by 20%/40%/60%/80%/100%', 'Heavy Armor 0/20/40/60/80', 8),
(81, 'Fists of Steel', 'Unarmed attacks with Heavy Armor gauntlets do their base armor rating in extra damage', 'Heavy Armor 30, Juggernaut', 8),
(82, 'Cushioned', 'Half damage from physics(fall damage, flying objects) with Heavy Armor', 'Heavy Armor 50, Fists of Steel', 8),
(83, 'Tower of Strength', 'You take 1 less turn from any immobilize with Heavy Armor', 'Heavy Armor 50, Juggernaut', 8),
(84, 'Conditioning', 'Wearing Heavy armor no longer affects how much stamina is used when sprinting. Any heavy armor worn no longer counts towards the carry weight', 'Heavy Armor 70, Cushioned', 8),
(85, 'Reflect Blows', '10% chance to reflect melee damage back to the enemy while wearing Heavy Armor', 'Heavy Armor 100, Conditioning', 8),
(86, 'Sheild Wall(1-5)', 'Blocking is 20%/25%/30%/35%/40% more effective', 'Block 0/20/40/60/80', 9),
(87, 'Deflect Arrows', 'Arrows that hit the shield do no damage', 'Block 30, Shield Wall', 9),
(88, 'Power Bash', 'Able to do a power bash, dealing 10 damage and staggering a target for 1 turn(does not stack), costs 20 stamina', 'Block 30, Shield Wall', 9),
(89, 'Elemental Protection', 'Blocking with a shield reduces incoming fire, frost and shock damage by 50%', 'Block 50, Deflect Arrows', 9),
(90, 'Deadly Bash', 'Bashing deals 30 damage instead of 10, still staggers for 1 turn', 'Block 50, Power Bash', 9),
(91, 'Disarming Bash', 'Chance to disarm when power bashing (50% chance)', 'Block 70, Deadly Bash', 9),
(92, 'Shield Charge', 'Sprinting with a shield raised knocks down most targets forcing them to take a turn to get up', 'Block 100, Disarming Bash', 9),
(93, 'Barbarian (1-5)', 'Two-Handed weapons do 20%/40%/60%/80%/100% more base damage', 'Two-Handed 0/20/40/60/80', 10),
(94, 'Champions Stance', 'Power attacks with two-handed weapons cost 25% less stamina', 'Two-Handed 20, Barbarian', 10),
(95, 'Limbsplitter (1-3)', 'Attacks with battle axes give Bleed(2/4/6 damage) for 3 turns', 'Two-Handed 30/60/90, Barbarian', 10),
(96, 'Deep Wounds (1-3)', 'Attacks with greatswords have a 10%/15%/20% chance of doing critical damage', 'Two-Handed 30/60/90, Barbarian', 10),
(97, 'Skull Crusher (1-3)', 'Attacks with warhammers ignore 25%/50%/75% of armor', 'Two-Handed 30/60/90, Barbarian', 10),
(98, 'Devastating Blow', 'Standing power attacks do 25% bonus damage with a chance to decapitate your enemies', 'Two-Handed 50, Champions Stance', 10),
(99, 'Great Critical Charge', 'Can do a two-handed power attack while sprinting that does double critical damage', 'Two-Handed 50, Champions Stance', 10),
(100, 'Sweep', 'Sideways power attacks with two-handed weapons hit all targets in front of you', 'Two-Handed 70, Devastating Blow OR Great Critical Charge', 10),
(101, 'Warmaster', 'Backwards power attack has a 25% chance to paralyze the target for 1 turn', 'Two-Handed 100, Sweep', 10),
(102, 'Armsman (1-5)', 'One-handed weapons do 20%/40%/60%/80%/100% more base damage', 'One-Handed 0/20/40/60/80', 11),
(103, 'Fighting Stance', 'Power attacks with one-handed weapons cost 25% less stamina', 'One-Handed 20, Armsman', 11),
(104, 'Hack and Slash(1-3)', 'Attacks with war axes give Bleed(2/4/6 damage) for 3 turns', 'One-Handed 30/60/90, Armsman', 11),
(105, 'Bladesman(1-3)', 'Attacks with swords have a 10%/15%/20% chance of doing critical damage', 'One-Handed 30/60/90, Armsman', 11),
(106, 'Bone Breaker(1-3)', 'Attacks with maces ignore 25%/50%/75% of armor', 'One-Handed 30/60/90, Armsman', 11),
(107, 'Savage Strike', 'Standing power attacks do 25% bonus damage with a chance to decapitate your enemies', 'One-Handed 50, Fighting Stance', 11),
(108, 'Critical Charge', 'Can do a one-handed power attack while sprinting that does double critical damage', 'One-Handed 50, Fighting Stance', 11),
(109, 'Dual Savagery', 'Dual wielding power attacks do 50% bonus damage', 'One-Handed 70, Armsman', 11),
(110, 'Paralyzing Strike', 'Backwards power attack has a 25% chance to paralyze the target for 1 turn', 'One-Handed 100, Savage Strike OR Critical Charge', 11),
(111, 'Overdraw (1-5)', 'Bows do 20%/40%/60%/80%/100% more base damage', 'Archery 0/20/40/60/80', 12),
(112, 'Eagle Eye', 'Adds 2 dice to an accuracy check with bows, cost 10 stamina', 'Archery 30, Overdraw', 12),
(113, 'Critical Shot ', 'Reqires 1 less success to get a critical hit as long as you are attacking with a bow/crossbow', 'Archery 40, Overdraw', 12),
(114, 'Power Shot', 'Arrows stagger all but the largest opponents 30% of the time', 'Archery 50, Eagle Eye', 12),
(115, 'Bullseye', '15% chance of paralyzing the target for a 1 turn', 'Archery 100, Power Shot', 12),
(116, 'Agile Defender(1-5)', 'Increase armor rating for Light Armor by 20%/40%/60%/80%/100%', 'Light Armor 0/20/40/60/80', 13),
(117, 'Unhindered', 'Light Armor weighs nothing and does not slow you down when worn', 'Light Armor 50', 13),
(118, 'Wind Walker', 'Regen an additional 5 points of stamina a turn in Light Armor', 'Light Armor 60; Unhindered', 13),
(119, 'Deft Movement', '10% chance of avoiding all damage when wearing Light Armor', 'Light Armor 100, Wind Walker', 13),
(120, 'Stealth(1-5)', 'Adds 1/2/3/4/5 dice for sneak checks permanently', 'Sneak 0/20/40/60/80', 14),
(121, 'Backstab', 'Sneak attacks with one-handed weapons now do six times normal damage', 'Sneak 30, Stealth', 14),
(122, 'Light Foot', 'You will not trigger pressure plates', 'Sneak 40, Stealth', 14),
(123, 'Deadly Aim', 'Sneak attacks with bows now do three times normal damage', 'Sneak 40, Backstab', 14),
(124, 'Silent Roll', 'Sprinting while sneaking executes a silent forward roll(cost same stamina)', 'Sneak 50, Light Foot', 14),
(125, 'Assassins Blade', 'Sneak attacks with daggers now do a total of fifteen times normal damage', 'Sneak 50, Deadly Aim', 14),
(126, 'Silence', 'Walking and running does not affect detection', 'Sneak 70, Silent Roll', 14),
(127, 'Shadow Warrior', 'Crouching mid-combat will remove you from everyone\'s sights', 'Sneak 100, Silence', 14),
(128, 'Novice Locks', 'Adds 3 dice with lockpicking checks for novice locks permanently', 'None', 15),
(129, 'Apprentice Locks', 'Adds 3 dice with lockpicking checks for apprentice locks permanently', 'Lockpicking 25, Novice Locks', 15),
(130, 'Quick Hands', 'Lockpick without getting noticed', 'Lockpicking 40, Apprentice Locks', 15),
(131, 'Adept Locks', 'Adds 3 dice with lockpicking checks for adept locks permanently', 'Lockpicking 50, Apprentice Locks', 15),
(132, 'Golden Touch', 'Find 20 more gold in chests', 'Lockpicking 60, Adept Locks', 15),
(133, 'Treasure Hunter', '10% chance to get special treasure in chests', 'Lockpicking 70, Golden Touch', 15),
(134, 'Expert Locks', 'Adds 3 dice with lockpicking checks for expert locks permanently', 'Lockpicking 75, Adept Locks', 15),
(135, 'Unbreakable', 'Lockpicks never break', 'Lockpicking 100, Treasure Hunter', 15),
(136, 'Master Locks', 'Adds 3 dice with lockpicking checks for master locks permanently', 'Lockpicking 100, Expert Locks', 15),
(137, 'Light Fingers (1-5)', 'Adds 1/2/3/4/5 dice for pickpocket checks permanently', 'Pickpocket 0/20/40/60/80', 16),
(138, 'Night Thief', 'Adds 2 dice for a pickpocket check if the target is asleep', 'Pickpocket 30, Light Fingers', 16),
(139, 'Poisoned', 'Silently harm enemies by placing poisons in their pockets', 'Pickpocket 40, Night Thief', 16),
(140, 'Extra Pockets', 'Carry cap increased by 100 points', 'Pickpocket 50, Night Thief', 16),
(141, 'Keymaster', 'Pickpocketing keys always works', 'Pickpocket 60, Extra Pockets', 16),
(142, 'Misdirection', 'Can steal the weapons off a target', 'Pickpocket 70, Keymaster', 16),
(143, 'Perfect Touch', 'Can steal the equipped gear off a target', 'Pickpocket 100, Misdirection', 16),
(144, 'Haggling(1-5)', 'Buying and selling prices are 10%/15%/20%/25%/30% better', 'Speech 0/20/40/60/80', 17),
(145, 'Allure', '10% better prices from npcs of the opposite sex', 'Speech 30, Haggling', 17),
(146, 'Bribery', 'Can possibly bribe guards to ignore crimes with bribe checks', 'Speech 30, Haggling', 17),
(147, 'Persuasion', 'Adds 3 dice to a persuasion checks permanently', 'Speech 50, Bribery', 17),
(148, 'Intimidation', 'Adds 5 dice to a intimidation checks permanently', 'Speech 70, Persuasion', 17),
(149, 'Fence', 'Can barter stolen goods with any merchant', 'Speech 100, Haggling', 17),
(150, 'Alchemist (1-5)', 'New potions/poisons are 20/40/60/80/100% stronger', 'Alchemy 0/20/40/60/80', 18),
(151, 'Physician', 'Potions you mix that restore health/magicka/stamina are 25% more powerful', 'Alchemy 20, Alchemist', 18),
(152, 'Poisoner', 'Poisons you mix are 25% more effective', 'Alchemy 30, Physician', 18),
(153, 'Benefactor', 'Potions you mix with beneficial effects have an additional 25% greater magnitude', 'Alchemy 30, Physician', 18),
(154, 'Experimenter (1-3)', 'Eating an ingredient reveals the first 2/3/4 effects', 'Alchemy 50/70/90, Benefactor', 18),
(155, 'Concentrated Poison', 'Poisons applied to weapons last for 2 hits instead of 1', 'Alchemy 60, Poisoner', 18),
(156, 'Snakeblood', 'Complete immunity to all poisons/poison', 'Alchemy 80, Concentrated Poison, Experimenter', 18),
(157, 'Master Alchemist', 'Gives the ability to have two different effects on created potions/poisons', 'Alchemy 100, Snakeblood', 18);

-- --------------------------------------------------------

--
-- Table structure for table `perk_types`
--

CREATE TABLE `perk_types` (
  `PerkTypeID` int(11) NOT NULL,
  `PerkTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perk_types`
--

INSERT INTO `perk_types` (`PerkTypeID`, `PerkTypeName`) VALUES
(1, 'Alteration'),
(2, 'Conjuration'),
(3, 'Destruction'),
(4, 'Illusion'),
(5, 'Restoration'),
(6, 'Enchanting'),
(7, 'Smithing'),
(8, 'Heavy Armor'),
(9, 'Block'),
(10, 'Two-Handed'),
(11, 'One-Handed'),
(12, 'Archery'),
(13, 'Light Armor'),
(14, 'Sneak'),
(15, 'Lockpicking'),
(16, 'Pickpocket'),
(17, 'Speech'),
(18, 'Alchemy');

-- --------------------------------------------------------

--
-- Table structure for table `potions_and_poisons`
--

CREATE TABLE `potions_and_poisons` (
  `PPID` int(11) NOT NULL,
  `PPName` varchar(255) NOT NULL,
  `PPEffect` varchar(255) NOT NULL,
  `PPValue` int(11) NOT NULL,
  `ATypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `potions_and_poisons`
--

INSERT INTO `potions_and_poisons` (`PPID`, `PPName`, `PPEffect`, `PPValue`, `ATypeID`) VALUES
(1, 'Potion of Minor Healing', 'Restore 25 points of Health', 17, 1),
(2, 'Potion of Healing', 'Restore 50 points of Health', 35, 1),
(3, 'Potion of Plentiful Healing', 'Restore 75 points of Health', 57, 1),
(4, 'Potion of Vigorous Healing', 'Restore 100 points of Health', 79, 1),
(5, 'Potion of Extreme Healing', 'Restore 150 points of Health', 123, 1),
(6, 'Potion of Ultimate Healing', 'Completely restores Health', 251, 1),
(7, 'Potion of Minor Magicka', 'Restore 25 points of Magicka', 20, 1),
(8, 'Potion of Magicka', 'Restore 50 points of Magicka', 44, 1),
(9, 'Potion of Plentiful Magicka', 'Restore 75 points of Magicka', 69, 1),
(10, 'Potion of Vigorous Magicka', 'Restore 100 points of Magicka', 95, 1),
(11, 'Potion of Extreme Magicka', 'Restore 150 points of Magicka', 148, 1),
(12, 'Potion of Ultimate Magicka', 'Completely restores Magicka', 150, 1),
(13, 'Potion of Minor Stamina', 'Restore 25 points of Stamina', 20, 1),
(14, 'Potion of Stamina', 'Restore 50 points of Stamina', 44, 1),
(15, 'Potion of Plentiful Stamina', 'Restore 75 points of Stamina', 69, 1),
(16, 'Potion of Vigorous Stamina', 'Restore 100 points of Stamina', 95, 1),
(17, 'Potion of Extreme Stamina', 'Restore 150 points of Stamina', 148, 1),
(18, 'Potion of Ultimate Stamina', 'Completely restores Stamina', 150, 1),
(19, 'Potion of Cure Disease', 'Cures all Diseases', 79, 1),
(20, 'Potion of Cure Poison', 'Stops all Poisons', 31, 1),
(21, 'Potion of Strength', 'Carrying Capacity increases by 20 for a session', 170, 1),
(22, 'Draught of Strength', 'Carrying Capacity increases by 30 for a session', 266, 1),
(23, 'Solution of Strength', 'Carrying Capacity increases by 40 for a session', 365, 1),
(24, 'Philter of Strength', 'Carrying Capacity increases by 50 for a session', 467, 1),
(25, 'Elixir of Strength', 'Carrying Capacity increases by 60 for a session', 571, 1),
(26, 'Potion of Alteration', 'Alteration Spells last 1 turn longer for 1 encounter', 49, 1),
(27, 'Draught of Alteration', 'Alteration Spells last 2 turn longer for 1 encounter', 106, 1),
(28, 'Philter of Alteration', 'Alteration Spells last 3 turn longer for 1 encounter', 165, 1),
(29, 'Elixir of Alteration', 'Alteration Spells last 4 turn longer for 1 encounter', 227, 1),
(30, 'Potion of Haggling', 'You haggle for 10% better prices for 1 shop encounter', 84, 1),
(31, 'Draught of Haggling', 'You haggle for 15% better prices for 1 shop encounter', 131, 1),
(32, 'Philter of Haggling', 'You haggle for 20% better prices for 1 shop encounter', 180, 1),
(33, 'Elixir of Haggling', 'You haggle for 25% better prices for 1 shop encounter', 230, 1),
(34, 'Potion of the Defender', 'Blocking absorbs 5 more damage for 1 encounter', 45, 1),
(35, 'Draught of the Defender', 'Blocking absorbs 10 more damage for 1 encounter', 70, 1),
(36, 'Philter of the Defender', 'Blocking absorbs 15 more damage for 1 encounter', 96, 1),
(37, 'Elixir of the Defender', 'Blocking absorbs 20 more damage for 1 encounter', 123, 1),
(38, 'Potion of Conjuration', 'Conjuration Spells last 1 turn longer for 1 encounter', 49, 1),
(39, 'Draught of Conjuration', 'Conjuration Spells last 2 turn longer for 1 encounter', 106, 1),
(40, 'Philter of Conjuration', 'Conjuration Spells last 3 turn longer for 1 encounter', 165, 1),
(41, 'Elixir of Conjuration', 'Conjuration Spells last 4 turn longer for 1 encounter', 227, 1),
(42, 'Potion of Destruction', 'Destruction Spells deal 5 more damage for 1 encounter', 49, 1),
(43, 'Draught of Destruction', 'Destruction Spells deal 10 more damage for 1 encounter', 106, 1),
(44, 'Philter of Destruction', 'Destruction Spells deal 15 more damage for 1 encounter', 165, 1),
(45, 'Elixir of Destruction', 'Destruction Spells deal 20 more damage for 1 encounter', 227, 1),
(46, 'Potion of Health', 'Health is increased by 20 points for 1 encounter', 67, 1),
(47, 'Draught of Health', 'Health is increased by 40 points for 1 encounter', 145, 1),
(48, 'Solution of Health', 'Health is increased by 60 points for 1 encounter', 226, 1),
(49, 'Philter of Health', 'Health is increased by 80 points for 1 encounter', 311, 1),
(50, 'Elixir of Health', 'Health is increased by 100 points for 1 encounter', 398, 1),
(51, 'Potion of Illusion', 'Illusion Spells effect enemies 5 levels higher for 1 encounter', 49, 1),
(52, 'Draught of Illusion', 'Illusion Spells effect enemies 10 levels higher for 1 encounter', 106, 1),
(53, 'Philter of Illusion', 'Illusion Spells effect enemies 15 levels higher for 1 encounter', 165, 1),
(54, 'Elixir of Illusion', 'Illusion Spells effect enemies 20 levels higher for 1 encounter', 227, 1),
(55, 'Potion of Lockpicking', 'Adds 1 dice for 1 lockpicking check', 49, 1),
(56, 'Draught of Lockpicking', 'Adds 2 dice for 1 lockpicking check', 106, 1),
(57, 'Philter of Lockpicking', 'Adds 3 dice for 1 lockpicking check', 165, 1),
(58, 'Elixir of Lockpicking', 'Adds 4 dice for 1 lockpicking check', 227, 1),
(59, 'Potion of Extra Magicka', 'Magicka is increased by 20 points for 1 encounter', 67, 1),
(60, 'Draught of Extra Magicka', 'Magicka is increased by 40 points for 1 encounter', 145, 1),
(61, 'Solution of Extra Magicka', 'Magicka is increased by 60 points for 1 encounter', 226, 1),
(62, 'Philter of Extra Magicka', 'Magicka is increased by 80 points for 1 encounter', 311, 1),
(63, 'Elixir of Extra Magicka', 'Magicka is increased by 100 points for 1 encounter', 398, 1),
(64, 'Potion of True Shot', 'Bows do 5 more damage for 1 encounter', 96, 1),
(65, 'Draught of True Shot', 'Bows do 10 more damage for 1 encounter', 151, 1),
(66, 'Philter of True Shot', 'Bows do 15 more damage for 1 encounter', 207, 1),
(67, 'Elixir of True Shot', 'Bows do 20 more damage for 1 encounter', 265, 1),
(68, 'Potion of the Warrior', 'One-Handed Weapons do 5 more damage for 1 encounter', 96, 1),
(69, 'Draught of the Warrior', 'One-Handed Weapons do 10 more damage for 1 encounter', 151, 1),
(70, 'Philter of the Warrior', 'One-Handed Weapons do 15 more damage for 1 encounter', 207, 1),
(71, 'Elixir of the Warrior', 'One-Handed Weapons do 20 more damage for 1 encounter', 265, 1),
(72, 'Potion of Pickpocketing', 'Adds 1 dice for 1 pickpocketing check', 49, 1),
(73, 'Draught of Pickpocketing', 'Adds 2 dice for 1 pickpocketing check', 106, 1),
(74, 'Philter of Pickpocketing', 'Adds 3 dice for 1 pickpocketing check', 165, 1),
(75, 'Elixir of Pickpocketing', 'Adds 4 dice for 1 pickpocketing check', 227, 1),
(76, 'Potion of Restoration', 'Restoration Spells heal 5 more health for 1 encounter', 49, 1),
(77, 'Draught of Restoration', 'Restoration Spells heal 10 more health for 1 encounter', 106, 1),
(78, 'Philter of Restoration', 'Restoration Spells heal 15 more health for 1 encounter', 165, 1),
(79, 'Elixir of Restoration', 'Restoration Spells heal 20 more health for 1 encounter', 227, 1),
(80, 'Potion of Light Feet', 'Adds 1 dice for 1 sneak check', 49, 1),
(81, 'Draught of Light Feet', 'Adds 2 dice for 1 sneak check', 106, 1),
(82, 'Philter of Light Feet', 'Adds 3 dice for 1 sneak check', 165, 1),
(83, 'Elixir of Light Feet', 'Adds 4 dice for 1 sneak check', 227, 1),
(84, 'Potion of Enhanced Stamina', 'Stamina is increased by 20 points for 1 encounter', 67, 1),
(85, 'Draught of Enhanced Stamina', 'Stamina is increased by 40 points for 1 encounter', 145, 1),
(86, 'Solution of Enhanced Stamina', 'Stamina is increased by 60 points for 1 encounter', 226, 1),
(87, 'Philter of Enhanced Stamina', 'Stamina is increased by 80 points for 1 encounter', 311, 1),
(88, 'Elixir of Enhanced Stamina', 'Stamina is increased by 100 points for 1 encounter', 398, 1),
(89, 'Potion of the Beserker', 'Two-Handed Weapons do 5 more damage for 1 encounter', 96, 1),
(90, 'Draught of the Beserker', 'Two-Handed Weapons do 10 more damage for 1 encounter', 151, 1),
(91, 'Philter of the Beserker', 'Two-Handed Weapons do 15 more damage for 1 encounter', 207, 1),
(92, 'Elixir of the Beserker', 'Two-Handed Weapons do 20 more damage for 1 encounter', 265, 1),
(93, 'Potion of Invisibility', 'User turns invisible for a certain amount of time', 214, 1),
(94, 'Potion of Resist Fire', 'Resist 5 points of fire damage for 1 encounter', 96, 1),
(95, 'Draught of Resist Fire', 'Resist 10 points of fire damage for 1 encounter', 151, 1),
(96, 'Philter of Resist Fire', 'Resist 15 points of fire damage for 1 encounter', 207, 1),
(97, 'Elixir of Resist Fire', 'Resist 20 points of fire damage for 1 encounter', 265, 1),
(98, 'Potion of Resist Frost', 'Resist 5 points of frost damage for 1 encounter', 96, 1),
(99, 'Draught of Resist Frost', 'Resist 10 points of frost damage for 1 encounter', 151, 1),
(100, 'Philter of Resist Frost', 'Resist 15 points of frost damage for 1 encounter', 207, 1),
(101, 'Elixir of Resist Frost', 'Resist 20 points of frost damage for 1 encounter', 265, 1),
(102, 'Potion of Resist Magic', 'Resist 5 points of magic damage for 1 encounter', 96, 1),
(103, 'Draught of Resist Magic', 'Resist 10 points of magic damage for 1 encounter', 151, 1),
(104, 'Philter of Resist Magic', 'Resist 15 points of magic damage for 1 encounter', 207, 1),
(105, 'Elixir of Resist Magic', 'Resist 20 points of magic damage for 1 encounter', 265, 1),
(106, 'Potion of Resist Shock', 'Resist 5 points of shock damage for 1 encounter', 96, 1),
(107, 'Draught of Resist Shock', 'Resist 10 points of shock damage for 1 encounter', 151, 1),
(108, 'Philter of Resist Shock', 'Resist 15 points of shock damage for 1 encounter', 207, 1),
(109, 'Elixir of Resist Shock', 'Resist 20 points of shock damage for 1 encounter', 265, 1),
(110, 'Potion of Waterbreathing', 'User can breath underwater for a certain amount of time', 200, 1),
(111, 'Potion of Waterwalking', 'User can walk on water for a certain amount of time', 500, 1),
(112, 'Potion of Minor Well-Being', 'Restore 15 points of Health, Magicka, & Stamina', 31, 1),
(113, 'Potion of Well-Being', 'Restore 35 points of Health, Magicka, & Stamina', 82, 1),
(114, 'Potion of Plentiful Well-Being', 'Restore 55 points of Health, Magicka, & Stamina', 139, 1),
(115, 'Potion of Vigorous Well-Being', 'Restore 75 points of Health, Magicka, & Stamina', 195, 1),
(116, 'Potion of Extreme Well-Being', 'Restore 90 points of Health, Magicka, & Stamina', 238, 1),
(117, 'Potion of Ultimate Well-Being', 'Restore 100 points of Health, Magicka, & Stamina', 269, 1),
(118, 'Cliff Racer', 'Restore 25 points of Stamina', 5, 1),
(119, 'Ice Wraith Essence', 'Resist 20 points of frost damage for 1 encounter', 96, 1),
(120, 'Philter of the Phantom', 'User goes into an ethereal state and can take or deal any damage for 2 turns', 50, 1),
(121, 'Potion of Blood', 'Equivalent to feeding on human blood for vampires. Vampires heal 100 points of health', 75, 1),
(122, 'Soul Husk Extract', 'Resist 25 points of magic damage for 1 encounter; Interrupts the soul drain effect in the Soul Cairn', 254, 1),
(123, 'Velvet LeChance', 'Restore 25 points of Stamina', 5, 1),
(124, 'White Gold Tower', 'Restore 25 points of Stamina', 5, 1),
(125, 'Redwater Skooma', 'Restore 40 points of Stamina', 35, 1),
(126, 'Skooma', 'Restore 25 points of Stamina', 20, 1),
(127, 'Sleeping Tree Sap', 'User\'s health is increased by 100 points and becomes 10ft slower for 1 encounter', 100, 1),
(128, 'Weak Poison', 'Causes 15 points of poison damage', 58, 2),
(129, 'Poison', 'Causes 25 points of poison damage', 103, 2),
(130, 'Potent Poison', 'Causes 35 points of poison damage', 149, 2),
(131, 'Virulent Poison', 'Causes 50 points of poison damage', 221, 2),
(132, 'Deadly Poison', 'Causes 65 points of poison damage', 296, 2),
(133, 'Weak Magicka Poison', 'Drains target\'s magicka by 30 points', 92, 2),
(134, 'Magicka Poison', 'Drains target\'s magicka by 50 points', 162, 2),
(135, 'Potent Magicka Poison', 'Drains target\'s magicka by 70 points', 235, 2),
(136, 'Malign Magicka Poison', 'Drains target\'s magicka by 100 points', 348, 2),
(137, 'Deadly Magicka Poison', 'Drains target\'s magicka by 130 points', 465, 2),
(138, 'Weak Stamina Poison', 'Drains target\'s stamina by 30 points', 92, 2),
(139, 'Stamina Poison', 'Drains target\'s stamina by 50 points', 162, 2),
(140, 'Potent Stamina Poison', 'Drains target\'s stamina by 70 points', 235, 2),
(141, 'Virulent Stamina Poison', 'Drains target\'s stamina by 100 points', 348, 2),
(142, 'Deadly Stamina Poison', 'Drains target\'s stamina by 130 points', 465, 2),
(143, 'Weak Aversion to Fire', 'Target takes 5 more damage from fire attacks for 2 turns', 116, 2),
(144, 'Aversion to Fire', 'Target takes 10 more damage from fire attacks for 2 turns', 164, 2),
(145, 'Potent Aversion to Fire', 'Target takes 15 more damage from fire attacks for 2 turns', 215, 2),
(146, 'Malign Aversion to Fire', 'Target takes 25 more damage from fire attacks for 2 turns', 266, 2),
(147, 'Deadly Aversion to Fire', 'Target takes 35 more damage from fire attacks for 2 turns', 318, 2),
(148, 'Weak Aversion to Frost', 'Target takes 5 more damage from frost attacks for 2 turns', 96, 2),
(149, 'Aversion to Frost', 'Target takes 10 more damage from frost attacks for 2 turns', 137, 2),
(150, 'Potent Aversion to Frost', 'Target takes 15 more damage from frost attacks for 2 turns', 179, 2),
(151, 'Malign Aversion to Frost', 'Target takes 25 more damage from frost attacks for 2 turns', 221, 2),
(152, 'Deadly Aversion to Frost', 'Target takes 35 more damage from frost attacks for 2 turns', 265, 2),
(153, 'Weak Aversion to Magic', 'Target takes 5 more damage from magic attacks for 2 turns', 193, 2),
(154, 'Aversion to Magic', 'Target takes 10 more damage from magic attacks for 2 turns', 274, 2),
(155, 'Potent Aversion to Magic', 'Target takes 15 more damage from magic attacks for 2 turns', 358, 2),
(156, 'Malign Aversion to Magic', 'Target takes 25 more damage from magic attacks for 2 turns', 443, 2),
(157, 'Deadly Aversion to Magic', 'Target takes 35 more damage from magic attacks for 2 turns', 530, 2),
(158, 'Weak Aversion to Shock', 'Target takes 5 more damage from shock attacks for 2 turns', 96, 2),
(159, 'Aversion to Shock', 'Target takes 10 more damage from shock attacks for 2 turns', 137, 2),
(160, 'Potent Aversion to Shock', 'Target takes 15 more damage from shock attacks for 2 turns', 179, 2),
(161, 'Malign Aversion to Shock', 'Target takes 25 more damage from shock attacks for 2 turns', 221, 2),
(162, 'Deadly Aversion to Shock', 'Target takes 35 more damage from shock attacks for 2 turns', 265, 2),
(163, 'Frostbite Venom', 'Target takes 5 points of damage to Health and Stamina for 2 turns', 21, 2),
(164, 'Ice Wrath Bane', 'If the target is an Ice Wraith, target takes 50 points of poison damage', 221, 2),
(165, 'Lotus Extract', 'Target takes 6 points of poison damage for 3 turns', 86, 2);

-- --------------------------------------------------------

--
-- Table structure for table `powers`
--

CREATE TABLE `powers` (
  `PowerID` int(11) NOT NULL,
  `PowerName` varchar(255) NOT NULL,
  `PowerDesc` varchar(255) NOT NULL,
  `PowerTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `powers`
--

INSERT INTO `powers` (`PowerID`, `PowerName`, `PowerDesc`, `PowerTypeID`) VALUES
(1, 'Highborn(High Elf)', 'Regenerate 25 points of your mana back every turn for 2 turns', 1),
(2, 'Hitskin(Argonian)', 'Regenerate 25 points of your health back every turn for 2 turns', 1),
(3, 'Command Animal(Wood Elf)', 'Turn any animal nearby into an ally for 2 turns', 1),
(4, 'Dragonskin(Breton)', 'Take half damage and 15 mana back from all hostile spells casted at you for 2 turns', 1),
(5, 'Ancestor\'s Wraith(Dark Elf)', 'Opponents in melee range take 8 points of damage every turn for 2 turns', 1),
(6, 'Voice of the Emperor(Imperial)', 'Nearby people are calmed and will no longer fight you', 1),
(7, 'Battle Cry(Nord)', 'Nearby people are afraid and will flee from you', 1),
(8, 'Beserker Rage(Orc)', 'Take half damage from all physical attacks and deal double damage for 2 turns', 1),
(9, 'Adrenaline Rush(Redgaurd)', 'Regenerate 25 points of your stamina back every turn for 2 turns', 1),
(10, 'Night Eye(Khajiit)', 'Allows you to see in the dark for a certain area', 1),
(11, 'Embrace the Shadows', 'Vampire is invisible and has imporved night vision for a certain amount of time', 2),
(12, 'Vampires Seduction', 'Creatures and People up to level 10 wont fight for 2 turns', 2),
(13, 'Vampires Servant', 'Reanimate a dead body to fight for you for 2 turns, ability to raise more powerful bodies come with the more days you go hungry', 2),
(14, 'Vampires Sight', 'Allows you to see in the dark for a certain area', 2),
(15, 'Vampiric Drain', 'Absorb 25 points of health back from a target(Can be only used unlimited while being in the Vampire Lord Form)', 2),
(16, 'Vampire Lord', 'Transforms into a Vampire Lord for as long as you want', 2),
(17, 'Beast Form', 'Transforms into a Werewolf for as long as you want to keep it on, able to have unlimited transformations with the Ring of Hircine', 3),
(18, 'Totem of Ice Brothers', 'Call fourth 2 Ice Wolfs to fight for you for 2 turns, unlocks with perk', 3),
(20, 'Totem of the Hunt', 'Casts Detect Life in an area(Check Alteration under Spells), unlocks with perk', 3),
(21, 'Nightingale Strife(Nightingales)', 'Instantly absorb 100 points of health from a single target', 4),
(22, 'Nighttingale Subterfuge(Nightingales)', 'People and creatures near the user will attack anything for a certain amount of time', 4),
(23, 'Shadowcloak of Nocturnal(Nightingales)', 'Automatically become invisible while sneaking for a certain amount of time', 4),
(24, 'Summon Spectral Assassin(Dark Brotherhood)', 'Summons the ghost of a legendary assassin to fight for you until he(or you) is defeated', 4),
(25, 'Ritual Stone', 'Raise all nearby dead enemies to fight for you for 2 turns', 5),
(26, 'Serpent Stone', 'Paralyze a target for 2 turns as well as do 25 points of damage', 5),
(27, 'Shadow Stone', 'Become invisible for a certain amount of time', 5),
(28, 'Tower Stone', 'Unlocks any Expert or lower level lock', 5);

-- --------------------------------------------------------

--
-- Table structure for table `power_types`
--

CREATE TABLE `power_types` (
  `PowerTypeID` int(11) NOT NULL,
  `PowerTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `power_types`
--

INSERT INTO `power_types` (`PowerTypeID`, `PowerTypeName`) VALUES
(1, 'Race Specific'),
(2, 'Vampire'),
(3, 'Werewolf'),
(4, 'Faction-Related'),
(5, 'Standing Stone');

-- --------------------------------------------------------

--
-- Table structure for table `races`
--

CREATE TABLE `races` (
  `RaceID` int(11) NOT NULL,
  `RaceName` varchar(255) DEFAULT NULL,
  `RaceStartStats` varchar(255) DEFAULT NULL,
  `RaceStartSpells` varchar(255) DEFAULT NULL,
  `RaceAbility` varchar(255) DEFAULT NULL,
  `RacePower` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `races`
--

INSERT INTO `races` (`RaceID`, `RaceName`, `RaceStartStats`, `RaceStartSpells`, `RaceAbility`, `RacePower`) VALUES
(1, 'Altmer(High Elf)', 'Illusion - 25, Conjuration - 20, Destruction - 20, Restoration - 20, Alteration - 20, Enchanting - 20', 'Flames, Healing, Fury', 'Fortify Magicka', 'Highborn'),
(2, 'Argonian', 'Light Armor - 20, Sneak - 20, Lockpicking - 25, Pickpocket - 20, Restoration - 20, Alteration - 20', 'Flames, Healing', 'Resist Disease, Water Breathing', 'Hitskin'),
(3, 'Bosmer(Wood Elf)', 'Archery - 25, Light Armor - 20, Sneak - 20, Lockpicking - 20, Pickpocket - 20, Alchemy - 20', 'Flames, Healing', 'Resist Disease/Poison', 'Command Animal'),
(4, 'Breton', 'Speech - 20, Alchemy - 20, Illusion - 20, Conjuration - 25, Restoration - 20, Alteration - 20', 'Flames, Healing, Conjure Familiar', 'Magic Resistance', 'Dragonskin'),
(5, 'Dunmer(Dark Elf)', 'Light Armor - 20, Sneak - 20, Alchemy - 20, Illusion - 20, Destruction - 25, Alteration - 20', 'Flames, Healing, Sparks', 'Resist Fire', 'Ancestors Wraith'),
(6, 'Imperial', 'Heavy Armor - 20, Block - 20, One-Handed - 20, Destruction - 20, Restoration - 25, Enchanting - 20', 'Flames, Healing', 'Imperial Luck', 'Voice of the Emperor'),
(7, 'Khajiit', 'One-Handed - 20, Archery - 20, Sneak - 25, Lockpicking - 20, Pickpocket - 20, Alchemy - 20', 'Flames, Healing', 'Claws', 'Night Eye'),
(8, 'Nord', 'Smithing - 20, Block - 20, Two-Handed - 25, One-Handed - 20, Light Armor - 20, Speech - 20', 'Flames, Healing', 'Resist Frost', 'Battle Cry'),
(9, 'Orsimer(Orc)', 'Smithing - 20, Heavy Armor - 25, Block - 20, Two-Handed - 20, One-Handed - 20, Enchanting - 20', 'Flames, Healing', 'Bloodkin', 'Beserker Rage'),
(10, 'Redguard', 'Smithing - 20, Block - 20, One-Handed - 25, Archery - 20, Destruction - 20, Alteration - 20', 'Flames, Healing', 'Resist Poison', 'Adrenaline Rush');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_types`
--

CREATE TABLE `recipe_types` (
  `RecipeTypeID` int(11) NOT NULL,
  `RecipeTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipe_types`
--

INSERT INTO `recipe_types` (`RecipeTypeID`, `RecipeTypeName`) VALUES
(1, 'Weapon Recipe'),
(2, 'Armor Recipe');

-- --------------------------------------------------------

--
-- Table structure for table `shields`
--

CREATE TABLE `shields` (
  `ShieldID` int(11) NOT NULL,
  `ShieldName` varchar(255) NOT NULL,
  `ShieldDefense` int(11) NOT NULL,
  `ShieldWeight` int(11) NOT NULL,
  `ShieldValue` int(11) NOT NULL,
  `ArmorTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shields`
--

INSERT INTO `shields` (`ShieldID`, `ShieldName`, `ShieldDefense`, `ShieldWeight`, `ShieldValue`, `ArmorTypeID`) VALUES
(1, 'Hide Shield', 5, 4, 25, 1),
(2, 'Imperial Light Shield', 6, 4, 40, 1),
(3, 'Elven Shield', 7, 4, 115, 1),
(4, 'Chitin Shield', 9, 8, 215, 1),
(5, 'Glass Shield', 10, 6, 450, 1),
(6, 'Dragonscale Shield', 12, 6, 750, 1),
(7, 'Stalhrim Shield', 13, 10, 600, 1),
(8, 'Dented Iron Shield', 6, 12, 30, 2),
(9, 'Guard Shield', 6, 6, 40, 2),
(10, 'Imperial Shield', 7, 12, 50, 2),
(11, 'Iron Shield', 8, 12, 60, 2),
(12, 'Bonemold Shield', 10, 8, 95, 2),
(13, 'Banded Iron Shield', 10, 12, 100, 2),
(14, 'Steel Shield', 12, 12, 150, 2),
(15, 'Chitin Heavy', 12, 12, 200, 2),
(16, 'Dwarven Shield', 13, 12, 225, 2),
(17, 'Blades Shield', 14, 12, 225, 2),
(18, 'Dawnguard Shield', 14, 10, 240, 2),
(19, 'Imporved Bonemold Shield', 15, 11, 95, 2),
(20, 'Nordic Shield', 15, 10, 335, 2),
(21, 'Falmer Shield', 15, 15, 10, 2),
(22, 'Orcish Shield', 16, 14, 500, 2),
(23, 'Ebony Shield', 17, 14, 750, 2),
(24, 'Dragonplate Shield', 18, 10, 1050, 2),
(25, 'Daedric Shield', 20, 15, 1600, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE `shouts` (
  `ShoutID` int(11) NOT NULL,
  `ShoutName` varchar(255) NOT NULL,
  `ShoutDesc` varchar(255) NOT NULL,
  `ShoutTeirs` varchar(255) NOT NULL,
  `ShoutCD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shouts`
--

INSERT INTO `shouts` (`ShoutID`, `ShoutName`, `ShoutDesc`, `ShoutTeirs`, `ShoutCD`) VALUES
(28, 'Animal Allegiance', 'Call fourth an animal from the wild to fight for you for 3 turns(Outdoors only)', '1-small animal; 2-medium animal; 3-large animal', '1-3 turns; 2-4 turns; 3-5 turns'),
(29, 'Aura Whisper', 'A whisper that will reveal any and all life in the area around you(Indoors only)', '1-small radius; 2-medium radius; 3-large radius', 'No Cooldown, can be used only once per area'),
(30, 'Battle Fury', 'Enchants you and all allies with the ability to attack more during a single turn', '1-1 additional attack; 2-2 additional attacks; 3-3 additional attacks', 'No Cooldown, can be used only once per battle'),
(31, 'Become Ethereal', 'Changes your form to an etheral being that can do no damage or take any damage(able to regen during this time)', '1-1 turn; 2-2 turns; 3-3 turns', 'No Cooldown, can be used only once per battle'),
(32, 'Bend Will', 'Empowers the mind of any creature to fight along side you for 2 turns', '1-animals; 2-people; 3-dragons', '1-2 turn; 2-4 turns; 3-6 turns'),
(33, 'Call Dragon', 'Calls fourth the great dragon Odahviing to fight by your side for an encounter(Outdoors only)', 'N/A(only works when full shout is called)', 'No Cooldown, can be used only once per day'),
(34, 'Call of Valor', 'Calls fourth a Hero of Soverngarde to fight by your side for an encounter', 'N/A(only works when full shout is called)', 'No Cooldown, can be used only once per day'),
(35, 'Clear Skies', 'Clears the skies of any weather, become your own weatherman(Outdoors only)', 'N/A(only works when full shout is called)', 'No Cooldown, can be used only once per day'),
(36, 'Cyclone', 'Control a chaotic cyclone to knock down anyone nearby forcing them immobilized for 1 turn', '1-small radius; 2-medium radius; 3-large radius', '1-3 turns; 2-4 turns; 3-5 turns'),
(37, 'Disarm', 'Completely rip the weapon from an opponents/groups grasp', '1-1 opponent; 2-2 opponents; 3-3 opponents', 'No Cooldown, can be used only once per battle'),
(38, 'Dismay', 'Make all that oppose you run in terror', '1-small; 2-medium; 3-large', '1-2 turns; 2-3 turns; 3-4 turns'),
(39, 'Dragon Aspect', 'Embrace the power of the dragons, deal +10 base damage to all attacks as well as have +10 base defense, damage shouts do +10 more damage', 'N/A(only works when full shout is called)', 'No Cooldown, can be used only once per day'),
(40, 'Dragonrend', 'Forces a dragon to be grounded from the skies, allowing them to be hit a lot easier(Can ground dragons even more if on ground already)', '1-1 turn grounded ; 2-2 turns grounded ; 3-3 turns grounded', '1-1 turn; 2-2 turns; 3-3 turns'),
(41, 'Drain Vitality', 'Drain the mortal energies from your opponent', '1-10 stam damage; 2-10 mag and stam damage; 3-10 health,mag,and stam damage', '1-2 turns; 2-4 turns; 3-6 turns'),
(42, 'Fire Breath', 'Breath the dragons flames to destroy your opponents, can hit small groups, gives Burn to all those hit for 2 turns', '1-20 fire damage; 2-30 fire damage; 3-40 fire damage', '1-2 turns; 2-4 turns; 3-7 turns'),
(43, 'Frost Breath', 'Breath the dragons frost to make your opponents feel the harsh winter', '1-10 damage(health,stam); 2-20 damage(health,stam); 3-30 damage(health,stam)', '1-2 turns; 2-4 turns; 3-7 turns'),
(44, 'Ice Form', 'Completely empower your opponent in ice, freezing them for 2 turns, can only hit one target', '1-small; 2-medium; 3-large(dragons and mammoths immune)', '1-3 turns; 2-5 turns; 3-7 turns'),
(45, 'Kynes Peace', 'This voice soothes wild beasts making them lose their desire to fight, can hit small groups', '1-small; 2-medium; 3-large', 'No Cooldown, can be used only once per battle'),
(46, 'Marked for Death', 'Bring doom to your opponenet and strip away their defensive properties permanently, can only hit one target', '1-10 damage(health,def); 2-20 damage(health,def); 3-30 damage(health,def)', 'No Cooldown, can be used only once per battle'),
(47, 'Soul Tear', 'Rip out the soul of your opponent instantly killing them and fill a empty soul gem if there is one in your inventory, cannot use on allies!(with some excuses)', 'N/A(only works when full shout is called)', 'No Cooldown, can be used only once per battle'),
(48, 'Slow Time', 'Use the power of time itself, preventing everyone in battle to take any actions for one turn(including allies)', 'N/A(only works when full shout is called)', 'No Cooldown, can be used only once per battle'),
(49, 'Storm Call', 'Shout to the skies and unleash the power of skyrims weather, lightning will randomly strike anyone(including allies),(Outdoors only)', '1-2 turns,40 damage; 2-4 turns,60 damage; 3-5 turns, 80 damage', 'No Cooldown, can be used only once per battle'),
(50, 'Summon Durnehviir', 'Calls fourth the undying dragon Durnehviir to fight by your side for an encounter(Outdoors only)', 'N/A(only works when full shout is called)', 'No Cooldown, can be used only once per day'),
(51, 'Throw Voice', 'Throws a fake voice at a location to distract anyone nearby the voice to go to that location', 'N/A(only works when full shout is called)', 'No Cooldown, can be used only once per area'),
(52, 'Unrelenting Force', 'Uses the raw power of the voice to push anyone and anything you shout at, can push multiple enemies', '1-5 damage; 2-5 damage + 1 turn stun; 3- 5 damage + 2 turn stun', '1-1 turn; 2-3 turns; 3-4 turns'),
(53, 'Whirlwind Sprint', 'This shout dashes the shouter forward a certain distance, can possibly allow the user to get places a mortal could not achieve', '1-short distance; 2-medium distance; 3-long distance', 'No Cooldown, can be used only three times per day');

-- --------------------------------------------------------

--
-- Table structure for table `smithing_recipes`
--

CREATE TABLE `smithing_recipes` (
  `SRecipeID` int(11) NOT NULL,
  `SRecipeItemName` varchar(255) NOT NULL,
  `SMaterialsRequire` varchar(255) NOT NULL,
  `UpgradeMaterial` varchar(255) DEFAULT NULL,
  `PerkRequire` varchar(255) DEFAULT NULL,
  `SmithingTypeID` int(11) NOT NULL,
  `RecipeTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smithing_recipes`
--

INSERT INTO `smithing_recipes` (`SRecipeID`, `SRecipeItemName`, `SMaterialsRequire`, `UpgradeMaterial`, `PerkRequire`, `SmithingTypeID`, `RecipeTypeID`) VALUES
(1, 'Corundum Ingot', 'Corundum Ore(2)', NULL, NULL, 1, NULL),
(2, 'Dwarven Metal Ingot(3)', 'Bent Dwemer Scrap Metal(1)', NULL, NULL, 1, NULL),
(3, 'Dwarven Metal Ingot (2)', 'Large Decorative Dwemer Strut(1)', NULL, NULL, 1, NULL),
(4, 'Dwarven Metal Ingot (3)', 'Large Dwemer Strut(1)', NULL, NULL, 1, NULL),
(5, 'Dwarven Metal Ingot (3)', 'Large Dwemer Plate Metal(1)', NULL, NULL, 1, NULL),
(6, 'Dwarven Metal Ingot (3)', 'Small Dwemer plate metal(1)', NULL, NULL, 1, NULL),
(7, 'Dwarven Metal Ingot (5)', 'Solid Dwemer metal', NULL, NULL, 1, NULL),
(8, 'Ebony Ingot', 'Ebony Ore(2)', NULL, NULL, 1, NULL),
(9, 'Gold Ingot', 'Gold Ore(2)', NULL, NULL, 1, NULL),
(10, 'Iron Ingot', 'Iron Ore(1)', NULL, NULL, 1, NULL),
(11, 'Orichalcum Ingot', 'Orichalcum Ore(2)', NULL, NULL, 1, NULL),
(12, 'Quicksilver Ingot', 'Quicksilver Ore(2)', NULL, NULL, 1, NULL),
(13, 'Refined Malachite', 'Malachite Ore(2)', NULL, NULL, 1, NULL),
(14, 'Refined Moonstone', 'Moonstone Ore(2)', NULL, NULL, 1, NULL),
(15, 'Silver Ingot', 'Silver Ore(2)', NULL, NULL, 1, NULL),
(16, 'Steel Ingot', 'Iron Ore(1), Corundum Ore(1)', NULL, NULL, 1, NULL),
(17, 'Leather(4)', 'Bear Pelt(1)', NULL, NULL, 2, NULL),
(18, 'Leather(4)', 'Cave Bear Pelt(1)', NULL, NULL, 2, NULL),
(19, 'Leather(3)', 'Cow Hide(1)', NULL, NULL, 2, NULL),
(20, 'Leather(2)', 'Deer Hide(1)', NULL, NULL, 2, NULL),
(21, 'Leather(1)', 'Fox Pelt(1)', NULL, NULL, 2, NULL),
(22, 'Leather(1)', 'Goat Hide(2)', NULL, NULL, 2, NULL),
(23, 'Leather(3)', 'Horse Hide(1)', NULL, NULL, 2, NULL),
(24, 'Leather(1)', 'Ice Wolf Pelt(1)', NULL, NULL, 2, NULL),
(25, 'Leather(4)', 'Sabre Cat Pelt(1)', NULL, NULL, 2, NULL),
(26, 'Leather(4)', 'Snow Sabre Cat Pelt(1)', NULL, NULL, 2, NULL),
(27, 'Leather(4)', 'Snow Bear Pelt(1)', NULL, NULL, 2, NULL),
(28, 'Leather(1)', 'Snow Fox Pelt(1)', NULL, NULL, 2, NULL),
(29, 'Leather(2)', 'Vale Deer Hide(1)', NULL, NULL, 2, NULL),
(30, 'Leather(4)', 'Vale Sabre Cat Pelt(1)', NULL, NULL, 2, NULL),
(31, 'Leather(1)', 'Wolf Pelt(1)', NULL, NULL, 2, NULL),
(32, 'Leather Strips(4)', 'Leather(1)', NULL, NULL, 2, NULL),
(33, 'Iron Dagger', 'Iron Ingot(1), Leather Strips(1)', 'Iron Ingot', NULL, 3, 1),
(34, 'Iron Sword', 'Iron Ingot(2), Leather Strips(1)', 'Iron Ingot', NULL, 3, 1),
(35, 'Iron Mace', 'Iron Ingot(3), Leather Strips(2)', 'Iron Ingot', NULL, 3, 1),
(36, 'Iron War Axe', 'Iron Ingot(2), Leather Strips(2)', 'Iron Ingot', NULL, 3, 1),
(37, 'Iron Greatsword', 'Iron Ingot(4), Leather Strips(2)', 'Iron Ingot', NULL, 3, 1),
(38, 'Iron Warhammer', 'Iron Ingot(4), Leather Strips(3)', 'Iron Ingot', NULL, 3, 1),
(39, 'Iron Battleaxe', 'Iron Ingot(4), Leather Strips(2)', 'Iron Ingot', NULL, 3, 1),
(40, 'Steel Dagger', 'Steel Ingot(1), Iron Ingot(1), Leather Strips(1)', 'Steel Ingot', 'Steel Smithing', 3, 1),
(41, 'Steel Sword', 'Steel Ingot(2), Iron Ingot(1), Leather Strips(1)', 'Steel Ingot', 'Steel Smithing', 3, 1),
(42, 'Steel Mace', 'Steel Ingot(3), Iron Ingot(1), Leather Strips(1)', 'Steel Ingot', 'Steel Smithing', 3, 1),
(43, 'Steel War Axe', 'Steel Ingot(2), Iron Ingot(1), Leather Strips(2)', 'Steel Ingot', 'Steel Smithing', 3, 1),
(44, 'Steel Greatsword', 'Steel Ingot(4), Iron Ingot(2), Leather Strips(3)', 'Steel Ingot', 'Steel Smithing', 3, 1),
(45, 'Steel Warhammer', 'Steel Ingot(4), Iron Ingot(1), Leather Strips(3)', 'Steel Ingot', 'Steel Smithing', 3, 1),
(46, 'Steel Battleaxe', 'Steel Ingot(4), Iron Ingot(1), Leather Strips(2)', 'Steel Ingot', 'Steel Smithing', 3, 1),
(47, 'Crossbow', 'Steel Ingot(3), Firewood(3)', 'Steel Ingot', 'Steel Smithing', 3, 1),
(48, 'Nord Hero Sword', 'Ancient Nord Sword(1), Steel Ingot(2), Leather Strips(2)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(49, 'Nord Hero War Axe', 'Ancient Nord War Axe(1), Steel Ingot(2), Leather Strips(2)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(50, 'Nord Hero Greatsword', 'Ancient Nord Greatsword(1), Steel Ingot(3), Leather Strips(3)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(51, 'Nord Hero Battleaxe', 'Ancient Nord Greatsword(1), Steel Ingot(3), Leather Strips(3)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(52, 'Nord Hero Bow', 'Ancient Nord Bow(1), Steel Ingot(3)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(53, 'Skyforge Steel Dagger', 'Steel Ingot(1), Iron Ingot(1), Leather Strips(1)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(54, 'Skyforge Steel Sword', 'Steel Ingot(2), Iron Ingot(1), Leather Strips(1)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(55, 'Skyforge Steel Mace', 'Steel Ingot(3), Iron Ingot(1), Leather Strips(1)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(56, 'Skyforge Steel War Axe', 'Steel Ingot(2), Iron Ingot(1), Leather Strips(2)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(57, 'Skyforge Steel Greatsword', 'Steel Ingot(4), Iron Ingot(2), Leather Strips(3)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(58, 'Skyforge Steel Warhammer', 'Steel Ingot(4), Iron Ingot(1), Leather Strips(3)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(59, 'Skyforge Steel Battleaxe', 'Steel Ingot(4), Iron Ingot(1), Leather Strips(2)[Crafting with the Skyforge]', 'Steel Ingot', 'Steel Smithing', 3, 1),
(60, 'Elven Dagger', 'Refined Moonstone(1), Quicksilver Ingot(1), Iron Ingot(1), Leather Strips(1)', 'Refined Moonstone', 'Elven Smithing', 3, 1),
(61, 'Elven Sword', 'Refined Moonstone(1), Quicksilver Ingot(1), Iron Ingot(1), Leather Strips(1)', 'Refined Moonstone', 'Elven Smithing', 3, 1),
(62, 'Elven Mace', 'Refined Moonstone(2), Quicksilver Ingot(1), Iron Ingot(1), Leather Strips(1)', 'Refined Moonstone', 'Elven Smithing', 3, 1),
(63, 'Elven War Axe', 'Refined Moonstone(1), Quicksilver Ingot(1), Iron Ingot(1), Leather Strips(2)', 'Refined Moonstone', 'Elven Smithing', 3, 1),
(64, 'Elven Greatsword', 'Refined Moonstone(2), Quicksilver Ingot(1), Iron Ingot(2), Leather Strips(3)', 'Refined Moonstone', 'Elven Smithing', 3, 1),
(65, 'Elven Warhammer', 'Refined Moonstone(2), Quicksilver Ingot(1), Iron Ingot(2), Leather Strips(3)', 'Refined Moonstone', 'Elven Smithing', 3, 1),
(66, 'Elven Battleaxe', 'Refined Moonstone(2), Quicksilver Ingot(1), Iron Ingot(2), Leather Strips(2)', 'Refined Moonstone', 'Elven Smithing', 3, 1),
(67, 'Elven Bow', 'Refined Moonstone(2), Quicksilver Ingot(1)', 'Refined Moonstone', 'Elven Smithing', 3, 1),
(68, 'Dwarven Dagger', 'Dwarven Metal Ingot(1), Steel Ingot(1), Iron Ingot(1), Leather Strips(1)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 1),
(69, 'Dwarven Sword', 'Dwarven Metal Ingot(1), Steel Ingot(1), Iron Ingot(1), Leather Strips(1)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 1),
(70, 'Dwarven Mace', 'Dwarven Metal Ingot(2), Steel Ingot(1), Iron Ingot(1), Leather Strips(1)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 1),
(71, 'Dwarven War Axe', 'Dwarven Metal Ingot(1), Steel Ingot(1), Iron Ingot(1), Leather Strips(2)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 1),
(72, 'Dwarven Greatsword', 'Dwarven Metal Ingot(2), Steel Ingot(2), Iron Ingot(2), Leather Strips(3)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 1),
(73, 'Dwarven Warhammer', 'Dwarven Metal Ingot(2), Steel Ingot(2), Iron Ingot(2), Leather Strips(3)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 1),
(74, 'Dwarven Battleaxe', 'Dwarven Metal Ingot(2), Steel Ingot(2), Iron Ingot(2), Leather Strips(2)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 1),
(75, 'Dwarven Bow', 'Dwarven Metal Ingot(2), Iron Ingot(1)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 1),
(76, 'Dwarven Crossbow', 'Dwarven Metal Ingot(5)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 1),
(77, 'Nordic Dagger', 'Steel Ingot(1), Quicksilver Ingot(1), Leather Strips(1)', 'Quicksilver Ingot', 'Advanced Armors', 3, 1),
(78, 'Nordic Sword', 'Steel Ingot(2), Quicksilver Ingot(1), Leather Strips(1)', 'Quicksilver Ingot', 'Advanced Armors', 3, 1),
(79, 'Nordic Mace', 'Steel Ingot(1), Quicksilver Ingot(1), Leather Strips(1)', 'Quicksilver Ingot', 'Advanced Armors', 3, 1),
(80, 'Nordic War Axe', 'Steel Ingot(2), Quicksilver Ingot(1), Leather Strips(2)', 'Quicksilver Ingot', 'Advanced Armors', 3, 1),
(81, 'Nordic Greatsword', 'Steel Ingot(5), Quicksilver Ingot(1), Leather Strips(3)', 'Quicksilver Ingot', 'Advanced Armors', 3, 1),
(82, 'Nordic Warhammer', 'Steel Ingot(5), Quicksilver Ingot(1), Leather Strips(3)', 'Quicksilver Ingot', 'Advanced Armors', 3, 1),
(83, 'Nordic Battleaxe', 'Steel Ingot(5), Quicksilver Ingot(1), Leather Strips(2)', 'Quicksilver Ingot', 'Advanced Armors', 3, 1),
(84, 'Nordic Bow', 'Steel Ingot(3), Quicksilver Ingot(1)', 'Quicksilver Ingot', 'Advanced Armors', 3, 1),
(85, 'Nordic Crossbow', 'Steel Ingot(4), Quicksilver Ingot(2), Leather Strips(1)', 'Quicksilver Ingot', 'Advanced Armors', 3, 1),
(86, 'Orcish Dagger', 'Orichalcum Ingot(1), Iron Ingot(1), Leather Strips(1)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 1),
(87, 'Orcish Sword', 'Orichalcum Ingot(2), Iron Ingot(1), Leather Strips(1)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 1),
(88, 'Orcish Mace', 'Orichalcum Ingot(3), Iron Ingot(1), Leather Strips(1)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 1),
(89, 'Orcish War Axe', 'Orichalcum Ingot(2), Iron Ingot(1), Leather Strips(2)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 1),
(90, 'Orcish Greatsword', 'Orichalcum Ingot(4), Iron Ingot(2), Leather Strips(3)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 1),
(91, 'Orcish Warhammer', 'Orichalcum Ingot(4), Iron Ingot(1), Leather Strips(3)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 1),
(92, 'Orcish Battleaxe', 'Orichalcum Ingot(4), Iron Ingot(1), Leather Strips(2)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 1),
(93, 'Orcish Bow', 'Orichalcum Ingot(2), Iron Ingot(1)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 1),
(94, 'Orcish Crossbow', 'Orichalcum Ingot(3), Iron Ingot(2)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 1),
(95, 'Glass Dagger', 'Refined Malachite(1), Refined Moonstone(1), Leather Strips(1)', 'Refined Malachite', 'Glass Smithing', 3, 1),
(96, 'Glass Sword', 'Refined Malachite(1), Refined Moonstone(1), Leather Strips(1)', 'Refined Malachite', 'Glass Smithing', 3, 1),
(97, 'Glass Mace', 'Refined Malachite(2), Refined Moonstone(1), Leather Strips(1)', 'Refined Malachite', 'Glass Smithing', 3, 1),
(98, 'Glass War Axe', 'Refined Malachite(1), Refined Moonstone(1), Leather Strips(2)', 'Refined Malachite', 'Glass Smithing', 3, 1),
(99, 'Glass Greatsword', 'Refined Malachite(2), Refined Moonstone(2), Leather Strips(3)', 'Refined Malachite', 'Glass Smithing', 3, 1),
(100, 'Glass Warhammer', 'Refined Malachite(2), Refined Moonstone(2), Leather Strips(3)', 'Refined Malachite', 'Glass Smithing', 3, 1),
(101, 'Glass Battleaxe', 'Refined Malachite(2), Refined Moonstone(2), Leather Strips(2)', 'Refined Malachite', 'Glass Smithing', 3, 1),
(102, 'Glass Bow', 'Refined Malachite(2), Refined Moonstone(1)', 'Refined Malachite', 'Glass Smithing', 3, 1),
(103, 'Ebony Dagger', 'Ebony Ingot(1), Leather Strips(1)', 'Ebony Ingot', 'Ebony Smithing', 3, 1),
(104, 'Ebony Sword', 'Ebony Ingot(2), Leather Strips(1)', 'Ebony Ingot', 'Ebony Smithing', 3, 1),
(105, 'Ebony Mace', 'Ebony Ingot(3), Leather Strips(1)', 'Ebony Ingot', 'Ebony Smithing', 3, 1),
(106, 'Ebony War Axe', 'Ebony Ingot(2), Leather Strips(2)', 'Ebony Ingot', 'Ebony Smithing', 3, 1),
(107, 'Ebony Greatsword', 'Ebony Ingot(5), Leather Strips(3)', 'Ebony Ingot', 'Ebony Smithing', 3, 1),
(108, 'Ebony Warhammer', 'Ebony Ingot(5), Leather Strips(3)', 'Ebony Ingot', 'Ebony Smithing', 3, 1),
(109, 'Ebony Battleaxe', 'Ebony Ingot(5), Leather Strips(2)', 'Ebony Ingot', 'Ebony Smithing', 3, 1),
(110, 'Ebony Bow', 'Ebony Ingot(3)', 'Ebony Ingot', 'Ebony Smithing', 3, 1),
(111, 'Ebony Crossbow', 'Ebony Ingot(5)', 'Ebony Ingot', 'Ebony Smithing', 3, 1),
(112, 'Stalhrim Dagger', 'Stalhrim(1), Leather Strips(1)', 'Stalhrim', 'Ebony Smithing', 3, 1),
(113, 'Stalhrim Sword', 'Stalhrim(2), Leather Strips(1)', 'Stalhrim', 'Ebony Smithing', 3, 1),
(114, 'Stalhrim Mace', 'Stalhrim(3), Leather Strips(1)', 'Stalhrim', 'Ebony Smithing', 3, 1),
(115, 'Stalhrim War Axe', 'Stalhrim(2), Leather Strips(2)', 'Stalhrim', 'Ebony Smithing', 3, 1),
(116, 'Stalhrim Greatsword', 'Stalhrim(5), Leather Strips(3)', 'Stalhrim', 'Ebony Smithing', 3, 1),
(117, 'Stalhrim Warhammer', 'Stalhrim(5), Leather Strips(3)', 'Stalhrim', 'Ebony Smithing', 3, 1),
(118, 'Stalhrim Battleaxe', 'Stalhrim(5), Leather Strips(2)', 'Stalhrim', 'Ebony Smithing', 3, 1),
(119, 'Stalhrim Bow', 'Stalhrim(3)', 'Stalhrim', 'Ebony Smithing', 3, 1),
(120, 'Daedric Dagger', 'Daedra Heart(1), Ebony Ingot(1), Leather Strips(1)', 'Ebony Ingot', 'Daedric Smithing', 3, 1),
(121, 'Daedric Sword', 'Daedra Heart(1), Ebony Ingot(2), Leather Strips(1)', 'Ebony Ingot', 'Daedric Smithing', 3, 1),
(122, 'Daedric Mace', 'Daedra Heart(1), Ebony Ingot(3), Leather Strips(1)', 'Ebony Ingot', 'Daedric Smithing', 3, 1),
(123, 'Daedric War Axe', 'Daedra Heart(1), Ebony Ingot(2), Leather Strips(2)', 'Ebony Ingot', 'Daedric Smithing', 3, 1),
(124, 'Daedric Greatsword', 'Daedra Heart(1), Ebony Ingot(5), Leather Strips(3)', 'Ebony Ingot', 'Daedric Smithing', 3, 1),
(125, 'Daedric Warhammer', 'Daedra Heart(1), Ebony Ingot(5), Leather Strips(3)', 'Ebony Ingot', 'Daedric Smithing', 3, 1),
(126, 'Daedric Battleaxe', 'Daedra Heart(1), Ebony Ingot(5), Leather Strips(2)', 'Ebony Ingot', 'Daedric Smithing', 3, 1),
(127, 'Daedric Bow', 'Daedra Heart(1), Ebony Ingot(3), Leather Strips(1)', 'Ebony Ingot', 'Daedric Smithing', 3, 1),
(128, 'Daedric Crossbow', 'Daedra Heart(1), Ebony Ingot(4), Leather Strips(2)', 'Ebony Ingot', 'Daedric Smithing', 3, 1),
(129, 'Dragonbone Dagger', 'Dragon Bone(1), Leather Strips(1)', 'Dragon Bone', 'Dragon Smithing', 3, 1),
(130, 'Dragonbone Sword', 'Dragon Bone(1), Ebony Ingot(1), Leather Strips(1)', 'Dragon Bone', 'Dragon Smithing', 3, 1),
(131, 'Dragonbone Mace', 'Dragon Bone(2), Ebony Ingot(1), Leather Strips(1)', 'Dragon Bone', 'Dragon Smithing', 3, 1),
(132, 'Dragonbone War Axe', 'Dragon Bone(1), Ebony Ingot(1), Leather Strips(2)', 'Dragon Bone', 'Dragon Smithing', 3, 1),
(133, 'Dragonbone Greatsword', 'Dragon Bone(4), Ebony Ingot(1), Leather Strips(3)', 'Dragon Bone', 'Dragon Smithing', 3, 1),
(134, 'Dragonbone Warhammer', 'Dragon Bone(3), Ebony Ingot(2), Leather Strips(3)', 'Dragon Bone', 'Dragon Smithing', 3, 1),
(135, 'Dragonbone Battleaxe', 'Dragon Bone(3), Ebony Ingot(2), Leather Strips(2)', 'Dragon Bone', 'Dragon Smithing', 3, 1),
(136, 'Dragonbone Bow', 'Dragon Bone(2), Ebony Ingot(1)', 'Dragon Bone', 'Dragon Smithing', 3, 1),
(137, 'Dragonbone Crossbow', 'Dragon Bone(2), Ebony Ingot(2), Leather Strips(1)', 'Dragon Bone', 'Dragon Smithing', 3, 1),
(138, 'Hide Armor', 'Leather(4), Leather Strips(3)', 'Leather', NULL, 3, 2),
(139, 'Hide Shield', 'Leather(4), Leather Strips(2)', 'Leather', NULL, 3, 2),
(140, 'Leather Armor', 'Leather(4), Leather Strips(3)', 'Leather', NULL, 3, 2),
(141, 'Studded Armor', 'Iron Ingot(1), Leather(4), Leather Strips(3)', 'Iron Ingot', NULL, 3, 2),
(142, 'Iron Armor', 'Iron Ingot(5), Leather Strips(3)', 'Iron Ingot', NULL, 3, 2),
(143, 'Iron Shield', 'Iron Ingot(4), Leather Strips(1)', 'Iron Ingot', NULL, 3, 2),
(144, 'Banded Iron Armor', 'Corundum Ingot(1), Iron Ingot(5), Leather Strips(3)', 'Corundum Ingot', NULL, 3, 2),
(145, 'Banded Iron Shield', 'Corundum Ingot(1), Iron Ingot(4), Leather Strips(1)', 'Corundum Ingot', NULL, 3, 2),
(146, 'Steel Armor', 'Steel Ingot(4), Iron Ingot(1), Leather Strips(3)', 'Steel Ingot', 'Steel Smithing', 3, 2),
(147, 'Steel Shield', 'Steel Ingot(3), Iron Ingot(1), Leather Strips(1)', 'Steel Ingot', 'Steel Smithing', 3, 2),
(148, 'Bonemold Armor', 'Bone Meal(10), Netch Leather(2), Iron Ingot(1)', 'Bone Meal', 'Steel Smithing', 3, 2),
(149, 'Bonemold Shield', 'Bone Meal(8), Netch Leather(1), Iron Ingot(1)', 'Bone Meal', 'Steel Smithing', 3, 2),
(150, 'Imperial Light Armor', 'Leather Strips(3), Leather(2), Steel Ingot(2)', 'Leather', 'Steel Smithing', 3, 2),
(151, 'Imperial Light Shield', 'Leather Strips(2), Steel Ingot(2)', 'Leather', 'Steel Smithing', 3, 2),
(152, 'Imperial Armor', 'Leather Strips(3), Leather(2), Steel Ingot(4)', 'Steel Ingot', 'Steel Smithing', 3, 2),
(153, 'Imperial Shield', 'Leather Strips(2), Steel Ingot(4)', 'Steel Ingot', 'Steel Smithing', 3, 2),
(154, 'Elven Armor', 'Refined Moonstone(4), Iron Ingot(1), Leather(1), Leather Strips(3)', 'Refined Moonstone', 'Elven Smithing', 3, 2),
(155, 'Elven Shield', 'Refined Moonstone(4), Iron Ingot(1),  Leather Strips(2)', 'Refined Moonstone', 'Elven Smithing', 3, 2),
(156, 'Chitin Armor', 'Netch Leather(2), Chitin Plate(5), Iron Ingot(1)', 'Chitin Plate', 'Elven Smithing', 3, 2),
(157, 'Chitin Shield', 'Netch Leather(1), Chitin Plate(4), Iron Ingot(1)', 'Chitin Plate', 'Elven Smithing', 3, 2),
(158, 'Elven Guilded Armor', 'Refined Moonstone(4), Iron Ingot(1), Quicksilver Ingot(1), Leather Strips(3)', 'Refined Moonstone', 'Elven Smithing', 3, 2),
(159, 'Chitin Heavy Armor', 'Netch Leather(2), Chitin Plate(6), Corundum Ingot(1)', 'Chitin Plate', 'Elven Smithing', 3, 2),
(160, 'Chitin Heavy Shield', 'Netch Leather(1), Chitin Plate(6), Corundum Ingot(1)', 'Chitin Plate', 'Elven Smithing', 3, 2),
(161, 'Dwarven Armor', 'Dwarven Metal Ingot(3), Steel Ingot(1), Iron Ingot(1), Leather Strips(3)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 2),
(162, 'Dwarven Shield', 'Dwarven Metal Ingot(2), Steel Ingot(1), Iron Ingot(1), Leather Strips(1)', 'Dwarven Metal Ingot', 'Dwarven Smithing', 3, 2),
(163, 'Scaled Armor', 'Steel Ingot(3), Corundum Ingot(2), Leather(2), Leather Strips(3)', 'Corundum Ingot', 'Advanced Armors', 3, 2),
(164, 'Steel Plate Armor', 'Steel Ingot(3), Corundum Ingot(2), Iron Ingot(1), Leather Strips(3)', 'Corundum Ingot', 'Advanced Armors', 3, 2),
(165, 'Improved Bonemold Armor', 'Stalhrim(1), Netch Jelly(1), Void Salts(1)', 'Bone Meal', 'Advanced Armors', 3, 2),
(166, 'Improved Bonemold Shield', 'Stalhrim(1), Netch Jelly(1), Void Salts(1)', 'Bone Meal', 'Advanced Armors', 3, 2),
(167, 'Nordic Carved Armor', 'Quicksilver Ingot(1), Ebony Ingot(1), Steel Ingot(6), Leather Strips(3)', 'Quicksilver Ingot', 'Advanced Armors', 3, 2),
(168, 'Nordic Carved Shield', 'Quicksilver Ingot(1), Steel Ingot(4), Leather Strips(1)', 'Quicksilver Ingot', 'Advanced Armors', 3, 2),
(169, 'Orcish Armor', 'Orichalcum Ingot(4), Iron Ingot(1), Leather Strips(3)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 2),
(170, 'Orcish Shield', 'Orichalcum Ingot(4), Iron Ingot(1), Leather Strips(1)', 'Orichalcum Ingot', 'Orcish Smithing', 3, 2),
(171, 'Glass Armor', 'Refined Malachite(4), Refined Moonstone(2), Leather(1), Leather Strips(3)', 'Refined Malachite', 'Glass Smithing', 3, 2),
(172, 'Glass Shield', 'Refined Malachite(4), Refined Moonstone(1), Leather Strips(2)', 'Refined Malachite', 'Glass Smithing', 3, 2),
(173, 'Stalhrim Light Armor', 'Stalhrim(5), Steel Ingot(1), Leather Strips(3)', 'Stalhrim', 'Ebony Smithing', 3, 2),
(174, 'Stalhrim Heavy Armor', 'Stalhrim(6), Quicksilver Ingot(1), Leather Strips(3)', 'Stalhrim', 'Ebony Smithing', 3, 2),
(175, 'Stalhrim Shield', 'Stalhrim(4), Steel Ingot(1), Leather Strips(1)', 'Stalhrim', 'Ebony Smithing', 3, 2),
(176, 'Ebony Armor', 'Ebony Ingot(5), Leather Strips(3)', 'Ebony Ingot', 'Ebony Smithing', 3, 2),
(177, 'Ebony Shield', 'Ebony Ingot(4), Leather Strips(1)', 'Ebony Ingot', 'Ebony Smithing', 3, 2),
(178, 'Daedric Armor', 'Daedra Heart(1), Ebony Ingot(5), Leather Strips(3)', 'Ebony Ingot', 'Daedric Smithing', 3, 2),
(179, 'Daedric Shield', 'Daedra Heart(1), Ebony Ingot(4), Leather Strips(1)', 'Ebony Ingot', 'Daedric Smithing', 3, 2),
(180, 'Ancient Nord Armor', 'Steel Ingot(5), Iron Ingot(2), Leather(2), Leather Strips(4)[Crafting with the Skyforge]', 'Iron Ingot', 'Daedric Smithing', 3, 2),
(181, 'Dragonscale Armor', 'Dragon Scale(4), Iron Ingot(2), Leather(1), Leather Strips(3)', 'Dragon Scale', 'Dragon Smithing', 3, 2),
(182, 'Dragonscale Shield', 'Dragon Scale(4), Iron Ingot(2), Leather Strips(2)', 'Dragon Scale', 'Dragon Smithing', 3, 2),
(183, 'Dragonplate Armor', 'Dragon Bone(2), Dragon Scale(3), Leather Strips(3)', 'Dragon Bone', 'Dragon Smithing', 3, 2),
(184, 'Dragonplate Shield', 'Dragon Bone(1), Dragon Scale(3), Leather Strips(1)', 'Dragon Bone', 'Dragon Smithing', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `smithing_types`
--

CREATE TABLE `smithing_types` (
  `SmithingTypeID` int(11) NOT NULL,
  `SmithingTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smithing_types`
--

INSERT INTO `smithing_types` (`SmithingTypeID`, `SmithingTypeName`) VALUES
(1, 'Smelting'),
(2, 'Tanning'),
(3, 'Forging');

-- --------------------------------------------------------

--
-- Table structure for table `smithing_upgrades`
--

CREATE TABLE `smithing_upgrades` (
  `SmithUpgradeID` int(11) NOT NULL,
  `SmithUpgradeName` varchar(255) NOT NULL,
  `SkillLevelRequire` int(11) NOT NULL,
  `WeaponEffect` varchar(25) NOT NULL,
  `ArmorEffect` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smithing_upgrades`
--

INSERT INTO `smithing_upgrades` (`SmithUpgradeID`, `SmithUpgradeName`, `SkillLevelRequire`, `WeaponEffect`, `ArmorEffect`) VALUES
(1, 'Fine', 0, 'Base Dmg +1', 'Base Def +2'),
(2, 'Superior', 22, 'Base Dmg +3', 'Base Def +6'),
(3, 'Exquisite', 40, 'Base Dmg +5', 'Base Def +10'),
(4, 'Flawless', 57, 'Base Dmg +7', 'Base Def +13'),
(5, 'Epic', 74, 'Base Dmg +8', 'Base Def +17'),
(6, 'Legendary', 91, 'Base Dmg +10', 'Base Def +20');

-- --------------------------------------------------------

--
-- Table structure for table `soul_gems`
--

CREATE TABLE `soul_gems` (
  `SGID` int(11) NOT NULL,
  `SGName` varchar(25) NOT NULL,
  `SGChargeAMT` int(11) NOT NULL,
  `SGCreatures` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soul_gems`
--

INSERT INTO `soul_gems` (`SGID`, `SGName`, `SGChargeAMT`, `SGCreatures`) VALUES
(1, 'Petty', 5, 'Chicken, Cow, Deer, Dog, Draugr, Elk, Fox, Frostbite Spider, Goat, Horker, Mudcrab, Rabbit, Skeever, Skeleton, Slaughterfish, Wisp; Wolf'),
(2, 'Lesser', 10, 'Ash Hopper, Bear, Chaurus, Draugr Wight, Falmer, Falmer Skulker, Flame Atronach, Giant Frostbite Spider, Horse, Ice Wolf, Ice Wraith, Restless Draugr, Riekling, Riekling Scout, Riekling Ranger, Sabre Cat, Snowy Sabre Cat, Spriggan, Troll, Werewolf'),
(3, 'Commom', 15, 'Ash Spawn, Cave Bear, Chaurus Reaper, Draugr Scourge, Draugr Scourge Lord, Falmer Gloomlurker, Falmer Nightprowler, Falmer Shadowmaster, Frost Atronach, Frost Troll, Hagraven, Hulking Draugr, Lurker, Mounted Riekling, Riekling Warrior, Snow Bear, Seeker, Spriggan Matron '),
(4, 'Greater', 20, 'Ash Spawn Skirmisher, Chaurus Hunter, Draugr Overlord, Draugr Deathlord, Giant, Storm Atronach, Wispmother, Riekling Rider, Riekling Courser, Spriggan Earth Mother, Burnt Spriggan'),
(5, 'Grand', 30, 'Ash Spawn Immolater, Unbound Dremora, Dragon Priest, Draugr Death Overlord, Falmer Warmonger, Frost Giant, Mammoth, Riekling Charger'),
(6, 'Black', 40, 'Humanoid chracters(10 playable race characters), Vampires, Dremora Lord');

-- --------------------------------------------------------

--
-- Table structure for table `spells`
--

CREATE TABLE `spells` (
  `SpellID` int(11) NOT NULL,
  `SpellName` varchar(255) NOT NULL,
  `SpellDesc` varchar(255) NOT NULL,
  `SpellMagickaCost` int(11) NOT NULL,
  `SpellTypeID` int(11) NOT NULL,
  `SpellDiffID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spells`
--

INSERT INTO `spells` (`SpellID`, `SpellName`, `SpellDesc`, `SpellMagickaCost`, `SpellTypeID`, `SpellDiffID`) VALUES
(1, 'Candlelight', 'Creates a hovering light near the caster for a certain amount of time', 20, 1, 1),
(2, 'Equilibrium', 'Converts health(costs health instead of magicka) to magicka and gain 25 points of mana back', 25, 1, 1),
(3, 'Oakflesh', 'Increases casters armor by 10 points for 2 turns', 50, 1, 1),
(4, 'Magelight', 'Creates a ball of light in a casted area for a certain amount of time', 84, 1, 2),
(5, 'Stoneflesh', 'Increases casters armor by 15 points for 2 turns', 90, 1, 2),
(6, 'Ash Spell', 'A target that fails to resist is immobilized in hardened ash for 1 turn', 148, 1, 3),
(7, 'Detect Life', 'Nearby living creatures, (but not undead, machines, or daedra) can be seen through walls', 100, 1, 3),
(8, 'Ironflesh', 'Increases casters armor by 20 points for 2 turns', 140, 1, 3),
(9, 'Telekenisis', 'Can pull an object to you from distance. Add it to your inventory or throw it.', 170, 1, 3),
(10, 'Transmute', 'Transform any iron ore in the casters inventory to silver ore, and silver ore to gold ore', 100, 1, 3),
(11, 'Waterbreathing', 'Can breath underwater for a certain amount of time', 222, 1, 3),
(12, 'Ash Rune', 'Cast an Ash Rune on a nearby surface, dealing 20 points of damage to targets that step nearby it, also immobilizes them for 1 turn', 248, 1, 4),
(13, 'Detect Dead', 'Nearby undead creatures, (but not living, machines, or daedra) can be seen through walls', 148, 1, 4),
(14, 'Ebonyflesh', 'Increases casters armor by 30 points for 2 turns', 340, 1, 4),
(15, 'Paralyze', 'A target that fails to resist is paralyzed for 2 turns', 450, 1, 4),
(16, 'Dragonhide', 'Caster takes no damage from any physical attack for 2 turns', 820, 1, 5),
(17, 'Mass Paralysis', 'Any nearby targets that fail to resist are paralyzed for 2 turns', 936, 1, 5),
(18, 'Bound Dagger', 'Summons a Bound Dagger(Dagger that deals 7 magical damage) to wield for 2 turns', 32, 2, 1),
(19, 'Bound Sword', 'Summons a Bound Sword(Sword that deals 9 magical damage) to wield for 2 turns', 92, 2, 1),
(20, 'Conjure Familiar', 'Summons a Familiar to fight for you for 2 turns', 106, 2, 1),
(21, 'Raise Zombie', 'Reanimate weak zombies(up to level 10) to fight for you for 2 turns', 102, 2, 1),
(22, 'Summon Unbound Dremora', 'Summon an Unbound Dremora(not an ally unless further action made)', 100, 2, 1),
(23, 'Bound Battleaxe', 'Summons a Bound Battleaxe(Battleaxe that deals 17 magical damage)to wield for 2 turns', 168, 2, 2),
(24, 'Conjure Boneman', 'Summons a Boneman  to fight for you for 2 turns', 128, 2, 2),
(25, 'Conjure Flame Atronach', 'Summons a Flame Atronach to fight for you for 2 turns', 150, 2, 2),
(26, 'Flaming Familiar', 'Summons a Flaming Familiar to charge into battle and explode at a group dealing 30 points of damage', 56, 2, 2),
(27, 'Reanimate Corpse', 'Reanimate zombies(up to level 30) to fight for you for 2 turns', 144, 2, 2),
(28, 'Soul Trap', 'If the target you had put soul trap on died in the next 2 rounds of battle, fill a soul gem', 106, 2, 2),
(29, 'Summon Arvak', 'Summon the horse Arvak to act as your stead(or fight for you for 2 turns in battle)', 136, 2, 2),
(30, 'Banish Daedra', 'Weaker summoned daedra(up to level 30) are sent back to Oblivion', 196, 2, 3),
(31, 'Bound Bow', 'Summons a Bound Bow(Bow that deals 15 ranged magical damage) to wield for 4 turns', 206, 2, 3),
(32, 'Conjure Ash Spawn', 'Summons an Ash Spawn to fight for you for 2 turns', 186, 2, 3),
(33, 'Conjure Frost Atronach', 'Summons a Frost Atronach to fight for you for 2 turns', 214, 2, 3),
(34, 'Conjure Mistman', 'Summons a Mistman to fight for you for 2 turns', 192, 2, 3),
(35, 'Conjure Seeker', 'Summons a Seeker to fight for you for 2 turns', 156, 2, 3),
(36, 'Revenant', 'Reanimate powerful zombies(up to level 50) to fight for you for 2 turns', 182, 2, 3),
(37, 'Command Daedra', 'Powerful summoned or raised creatures(up to level 50) are under players control', 242, 2, 4),
(38, 'Conjure Dremora Lord', 'Summons a Dremora Lord to fight for you for 2 turns', 358, 2, 4),
(39, 'Conjure Wrathman', 'Summons a Wrathman to fight for you for 2 turns', 300, 2, 4),
(40, 'Conjure Storm Atronach', 'Summons a Storm Atronach to fight for you for 2 turns', 322, 2, 4),
(41, 'Dread Zombie', 'Reanimate very powerful zombies(up to level 70) to fight for you for 2 turns', 302, 2, 4),
(42, 'Expel Daedra', 'Powerful summoned daedra(up to level 50) are sent back to Oblivion', 214, 2, 4),
(43, 'Dead Thrall', 'Reanimate any dead body to fight for you permanently', 1000, 2, 5),
(44, 'Flame Thrall', 'Summons a Flame Atronach to fight for you permanently', 900, 2, 5),
(45, 'Frost Thrall', 'Summons a Frost Atronach to fight for you permanently', 1100, 2, 5),
(46, 'Storm Thrall', 'Summons a Storm Atronach to fight for you permanently', 1200, 2, 5),
(47, 'Flames', 'Spits a gout of fire dealing 15 points of damage to the target, gives the target Burn(see Debuffs under Abilities/Diseases) for 2 turns', 14, 3, 1),
(48, 'Frostbite', 'Spits a gout of frost dealing 15 points of damage to the targets health and stamina', 16, 3, 1),
(49, 'Sparks', 'Spits a gout of shock dealing 15 points of damage to the targets health and magicka', 18, 3, 1),
(50, 'Vampiric Drain', 'Absorb 5,7,10,13(depending on vamparism stage) points of health from the target(Can only have as a vampire)', 6, 3, 1),
(51, 'Firebolt', 'Shoots a bolt of fire dealing 25 points of damage to the target, gives the target Burn for 2 turns', 40, 3, 2),
(52, 'Freeze', 'Shoots a spike of ice dealing 20 points of damage to health and stamina, gives the target Slow for 2 turns', 30, 3, 2),
(53, 'Ice Spike', 'Shoots a spike of ice dealing 25 points of damage to health and stamina', 48, 3, 2),
(54, 'Ignite', 'Shoots a blast of flame that gives Burn to the target for 4 turns(this Burns does 4 damge per turn instead of 2)', 30, 3, 2),
(55, 'Lightning Bolt', 'Shoots a bolt of lightning dealing 25 points of damage to health and magicka', 50, 3, 2),
(56, 'Fire Rune', 'Cast a Fire Rune on a nearby surface, dealing 50 points of damage to targets that step nearby it, gives Burn for 2 turns', 234, 3, 2),
(57, 'Frost Rune', 'Cast a Frost Rune on a nearby surface, dealing 50 points of damage to targets health and stamina that step nearby it, gives Slow for 2 turns', 292, 3, 2),
(58, 'Lightning Rune', 'Cast a Lightning Rune on a nearby surface, dealing 50 points of damage to targets health and magicka that step nearby it', 320, 3, 2),
(59, 'Chain Lightning', 'Shoots a lightning bolt dealing 40 points of damage to targets health and magicka, does matching damage to one nearby target(can hit ally)', 156, 3, 3),
(60, 'Fireball', 'Shoots a fireball dealing 40 points of damge to a target and any nearby targets, gives Burn to any target hit for 2 turns(can hit allies)', 132, 3, 3),
(61, 'Ice Storm', 'Casts a Freezing Whirlwind that deals 40 points of damage to targets health and stamina, does matching damage to anyone nearby', 144, 3, 3),
(62, 'Flame Cloak', 'Casts a cloak of flames that deal 8 points of damage to opponents in melee range,grants any target Burn for 2 turns,does not harm allies but can harm npcs,lasts 2 turns', 288, 3, 3),
(63, 'Frost Cloak', 'Casts a cloak of frost that deal 8 points of damage to opponents health and stamina,does not harm allies but can harm npcs,lasts 2 turns', 316, 3, 3),
(64, 'Storm Cloak', 'Casts a cloak of sparks that deal 8 points of damage to opponents health and magicka,does not harm allies but can harm npcs,lasts 2 turns', 370, 3, 3),
(65, 'Whirlwind Cloak', 'Cast a cloak of wind that has the chance to fling opponenets in melee range away,does not harm allies but can harm npcs, last for 2 turns', 338, 3, 3),
(66, 'Icy Spear', 'Shoots a spear of ice dealing 60 points of damage to targets health and stamina', 320, 3, 4),
(67, 'Incinerate', 'Shoots a blast of fire dealing 60 points of damage to target, gives Burn to the target for 2 turns', 298, 3, 4),
(68, 'Thunderbolt', 'Shoots a Thunderbolt dealing 60 points of damage to targets health and magicka', 342, 3, 4),
(69, 'Wall of Flames', 'Casts a wall of fire dealing 50 points of damage to any opponent inside and giving them Burn for 2 turns,does not harms allies,last for 2 turns', 330, 3, 4),
(70, 'Wall of Frost', 'Cast a wall of frost dealing 50 points of damage to health and stamina to any opponent inside,does not harm allies,last for 2 turns', 340, 3, 4),
(71, 'Wall of Storms', 'Cast a wall of storm dealing 50 points of damage to health and magicka to any opponent inside,does not harm allies,last for 2 turns', 350, 3, 4),
(72, 'Blizzard', 'Creates a blizzard around the caster,dealing 50 points of damge to health and stamina to any opponents nearby,does not harm allies,lasts for 4 turns', 656, 3, 5),
(73, 'Fire Storm', 'Creates a firey explosion around the user dealing from 100-200(based of proximity)points of damage to any opponents nearby,gives Burn for 2 turns,does not harm allies', 846, 3, 5),
(74, 'Lightning Storm', 'Fires a storm of lightning dealing 75 points of damage to targets health and magicka,does not harm allies, last for 4 turns ', 750, 3, 5),
(75, 'Clairvoyance', 'Shows the direction to the current goal in the current room user is in', 25, 4, 1),
(76, 'Courage', 'Target wont flee from battle for 2 turns and gets 5 additional Health and Stamina', 38, 4, 1),
(77, 'Fury', 'Creatures and People up to level 6 will attack anyone nearby for 2 turns', 66, 4, 1),
(78, 'Calm', 'Creatures and People up to level 9 are immobilized for 1 turn', 146, 4, 2),
(79, 'Fear', 'Creatures and People up to level 9 will flee from battle for 1 turn', 152, 4, 2),
(80, 'Muffle', 'Add 2 dice during your sneak check', 144, 4, 2),
(81, 'Frenzy', 'Creatures and People up to level 14 will attack anyone nearby for 2 turns', 208, 4, 3),
(82, 'Frenzy Rune', 'Cast a Frenzy Rune on a nearby surface, targets under level 20 will attack anyone nearby for 2 turns', 278, 4, 3),
(83, 'Rally', 'Target wont flee from battle for 2 turns and gets 20 additional Health and Stamina', 112, 4, 3),
(84, 'Invisibility', 'Makes you completely invisible for a certain amount of time', 334, 4, 4),
(85, 'Pacify', 'Creatures and People up to level 20 are immobilized for 2 turns', 290, 4, 4),
(86, 'Rout', 'Creatures and People up to level 20 will flee from battle for 1 turn', 316, 4, 4),
(87, 'Call to Arms', 'Party gains 10 base damage and 25 additional Health and Stamina for 3 turns', 854, 4, 5),
(88, 'Harmony', 'Creatures and People up to level 25 are immobilized for 2 turns', 1052, 4, 5),
(89, 'Hysteria', 'Creatures and People up to level 25 will flee from battle for 2 turns', 866, 4, 5),
(90, 'Mayhem', 'Creatures and People up to level 25 will attack anyone nearby for 2 turns', 990, 4, 5),
(91, 'Healing', 'Heals the Caster by 15 points', 12, 5, 1),
(92, 'Lesser Ward', 'Increases armor by 10 points and negate 10 points of spell damage/effects for 1 turn', 34, 5, 1),
(93, 'Fast Healing', 'Heals the Caster by 25 points', 72, 5, 2),
(94, 'Healing Hands', 'Heals the Target by 20 points(cannot heal undead, atronachs, or automations)', 24, 5, 2),
(95, 'Necromantic Healing', 'Heals Undead target by 20 points(cannot heal living, atronachs, or automations)', 36, 5, 2),
(96, 'Steadfast Ward', 'Increases armor by 15 points and negate 15 points of spell damage/effects for 1 turn', 58, 5, 2),
(97, 'Sun Fire', 'Ball of sunlight that does 25 damage to undead(and only undead)', 24, 5, 2),
(98, 'Turn Lesser Undead', 'Targeted Undead up to level 6 flee for 2 turns', 84, 5, 2),
(99, 'Close Wounds', 'Heals the Caster 40 points', 126, 5, 3),
(100, 'Greater Ward', 'Increases armor by 20 points and negate 20 points of spell damage/effects for 1 turn', 86, 5, 3),
(101, 'Heal Other', 'Heals the Target by 35 points(cannot heal undead, atronachs, or automations)', 80, 5, 3),
(102, 'Heal Undead', 'Heals Undead target by 35 points(cannot heal living, atronachs, or automations)', 114, 5, 3),
(103, 'Poison Rune', 'Targets that fail to resisit will take 5 points of poison damage for 3 turns', 146, 5, 3),
(104, 'Repel Lesser Undead', 'Undead up to level 8 around the caster will flee for 1 turn', 114, 5, 3),
(105, 'Stendarrs Aura', 'Undead close to caster takes 10 points of sun damage, last 2 turns', 248, 5, 3),
(106, 'Turn Undead', 'Targeted Undead up to level 13 flee for 2 turns', 168, 5, 3),
(107, 'Vampires Bane', 'Fires an explosion that does 40 points of sun damage to target and nearby targets', 72, 5, 3),
(108, 'Circle of Protection', 'Undead up to level 20 inside or that enter the circle around the caster flee permenantly, last 3 turns', 170, 5, 4),
(109, 'Grand Healing', 'Heals everyone close to the caster by 55 points(cannot heal undead, atronach, automations)', 254, 5, 4),
(110, 'Repel Undead', 'Undead up to level 16 around the caster will flee for 1 turn', 352, 5, 4),
(111, 'Turn Greater Undead', 'Targeted Undead up to level 21 flee for 2 turns', 266, 5, 4),
(112, 'Bane of the Undead', 'Undead up to level 44 around the caster will flee for 1 turn, also gives Burn to all affected undead for 2 turns', 988, 5, 5),
(113, 'Guardian Circle', 'Undead up to level 35 inside or that enter the circle around the caster flee permenantly, heals caster and any ally inside the circle by 20 points, lasts 4 turns', 716, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `spell_difficulties`
--

CREATE TABLE `spell_difficulties` (
  `SpellDiffID` int(11) NOT NULL,
  `SpellDiffName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spell_difficulties`
--

INSERT INTO `spell_difficulties` (`SpellDiffID`, `SpellDiffName`) VALUES
(1, 'Novice'),
(2, 'Apprentice'),
(3, 'Adept'),
(4, 'Expert'),
(5, 'Master');

-- --------------------------------------------------------

--
-- Table structure for table `spell_types`
--

CREATE TABLE `spell_types` (
  `SpellTypeID` int(11) NOT NULL,
  `SpellTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spell_types`
--

INSERT INTO `spell_types` (`SpellTypeID`, `SpellTypeName`) VALUES
(1, 'Alteration'),
(2, 'Conjuration'),
(3, 'Destruction'),
(4, 'Illusion'),
(5, 'Restoration');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `StaffID` int(11) NOT NULL,
  `StaffName` varchar(255) NOT NULL,
  `StaffWeight` int(11) NOT NULL,
  `StaffValue` int(11) NOT NULL,
  `StaffDesc` varchar(255) NOT NULL,
  `SpellTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`StaffID`, `StaffName`, `StaffWeight`, `StaffValue`, `StaffDesc`, `SpellTypeID`) VALUES
(1, 'Staff of Magelight', 8, 239, 'Creates a ball of light in a casted area for a certain amount of time(40 charges)', 1),
(2, 'Staff of Paralysis', 8, 3965, 'Paralye a target for 1 turn(40 charges)', 1),
(3, 'Staff of Banashing', 8, 926, 'Banishes weaker leveled daedra(removes any daedra below level 30 from battle)(30 charges)', 2),
(4, 'Staff of Daedric Command', 8, 926, 'Powerful raised creatures(up to level 50) are put under your control for 2 turns(30 charges)', 2),
(5, 'Staff of Dread Zombies', 8, 1248, 'Reanimate very powerful zombies(up to level 70) to fight for you for 2 turns(30 charges)', 2),
(6, 'Staff of Expulsions', 8, 2092, 'Banishes higher leveled daedra(removes any daedra below level 50 from battle)(30 charges)', 2),
(7, 'Staff of Reanimation', 8, 949, 'Reanimate weak zombies(up to level 30) to fight for you for 2 turns(40 charges)', 2),
(8, 'Staff of Revenants', 8, 824, 'Reanimate powerful zombies(up to level 50) to fight for you for 2 turns(30 charges)', 2),
(9, 'Staff of Soul Trapping', 8, 986, 'If the target you had put soul trap on died in the next 2 rounds of battle, fill a soul gem(40 charges)', 2),
(10, 'Staff of the Familiar', 8, 926, 'Summons a Familiar to fight for you for 2 turns(40 charges)', 2),
(11, 'Staff of the Flame Atronach', 8, 727, 'Summons a Flame Atronach to fight for you for 2 turns(40 charges)', 2),
(12, 'Staff of the Frost Atronach', 8, 1106, 'Summons a Frost Atronach to fight for you for 2 turns(40 charges)', 2),
(13, 'Staff of the Storm Atronach', 8, 1656, 'Summons a Storm Atronach to fight for you for 2 turns(30 charges)', 2),
(14, 'Staff of Zombies', 8, 449, 'Reanimate weak zombies(up to level 10) to fight for you for 2 turns(40 charges)', 2),
(15, 'Staff of Fireballs', 8, 1309, 'Fires an explosion dealing 40 points of fire damage to all enemies in a close radius, gives Burn to target(40 charges)', 3),
(16, 'Staff of Firebolts', 8, 456, 'Fires an blast dealing 25 points of fire damage to a target, gives Burn to target(40 charges)', 3),
(17, 'Staff of Flames', 8, 183, 'Spouts fire dealing 8 points of fire damage to a target, gives Burn to target(40 charges)', 3),
(18, 'Staff of Frostbite', 8, 198, 'A cold blast dealing 8 points of frost damage to Health and Stamina(40 charges)', 3),
(19, 'Staff of Chain Lightning', 8, 1494, 'Fire a lightning bolt dealing 40 points of shock damage to Health and Magicka, does matching damage to one nearby enemy(40 charges)', 3),
(20, 'Staff of Ice Spikes', 8, 511, 'A spike of ice that does 25 points of Frost Damage to Health and Stamina(40 charges)', 3),
(21, 'Staff of Ice Storms', 8, 1401, 'A freezing whirlwind that does 40 points of Frost Damage to Health and Stamina(40 charges)', 3),
(22, 'Staff of Icy Spear', 8, 2931, 'A spear of ice that does 60 points of Frost Damage to Health and Stamina(40 charges)', 3),
(23, 'Staff of Incineration', 8, 2750, 'A blast of fire that does 60 points of damage, gives Burn to target(40 charges)', 3),
(24, 'Staff of Lightning Bolts', 8, 538, 'Fire a lightning bolt dealing 25 points of shock damage to Health and Magicka(40 charges)', 3),
(25, 'Staff of Sparks', 8, 218, 'Fires a spark of lightning that deals 8 points of damage to Health and Magicka(40 charges)', 3),
(26, 'Staff of Flame Wall', 8, 1310, 'Spouts a wall of fire on the ground that deals 50 points of damage to targets inside,giving them Burn as well,lasts for 2 turns(40 charges)', 3),
(27, 'Staff of Frost Wall', 8, 1468, 'Spouts a wall of ice on the ground thats deals 50 points of damage to Health and Stamina to targets inside,lasts for 2 turns(40 charges)', 3),
(28, 'Staff of Storm Wall', 8, 1531, 'Spouts a wall of lightning on the ground that deals 50 points of damage to Health and Magicka to targets inside, lasts for 2 turns(40 charges)', 3),
(29, 'Grand Staff of Charming', 8, 1893, 'Creatures and People up to level 15 are immobilized for 2 turns(40 charges)', 4),
(30, 'Staff of Calm', 8, 1153, 'Creatures and People up to level 8 are immobilized for 1 turns(40 charges)', 4),
(31, 'Staff of Courage', 8, 79, 'Target wont flee from battle for 2 turns and gets 5 additional Health and Stamina(40 charges)', 4),
(32, 'Staff of Fear', 8, 2443, 'Creatures and People up to level 8 will flee from battle for 2 turns(40 charges)', 4),
(33, 'Staff of Frenzy', 8, 1149, 'Creatures and People up to level 8 will attack anyone nearby for 2 turns(40 charges)', 4),
(34, 'Staff of Fury', 8, 803, 'Creatures and People up to level 4 will attack anyone nearby for 2 turns(40 charges)', 4),
(35, 'Staff of Inspiration', 8, 317, 'Target wont flee from battle for 2 turns and gets 10 additional Health and Stamina(40 charges)', 4),
(36, 'Staff of Tandil', 8, 2530, 'Creatures and People up to level 12 flee from combat for 1 turn(40 charges)', 4),
(37, 'Grand Staff of Repulsion', 8, 1289, 'All undead up to level 8 in a group flee for 1 turn(40 charges)', 5),
(38, 'Grand Staff of Turning', 8, 1520, 'Targeted Undead up to level 12 flee or 1 turn(40 charges)', 5),
(39, 'Minor Staff of Turning', 8, 556, 'Targeted Undead up to level 4 flee or 1 turn(40 charges)', 5),
(40, 'Staff of Mending', 8, 613, 'Heals target for 45 points(Undead, Atronachs, and Machines are unaffected)(40 charges)', 5),
(41, 'Staff of Repulsion', 8, 675, 'All undead up to level 4 in a group flee for 1 turn(40 charges)', 5),
(42, 'Staff of Healing Hand', 8, 198, 'Heals target for 10 points(Undead, Atronachs, and Machines are unaffected)(40 charges)', 5),
(43, 'Staff of Turning', 5, 1036, 'Targeted Undead up to level 8 flee or 1 turn(40 charges)', 5),
(44, 'Eye of Melka', 8, 1234, 'Fires an explosion dealing 40 points of fire damage to all enemies in a close radius, gives the target Burn for 2 turns(40 charges)', 3),
(45, 'Forsworn Staff', 8, 183, 'Target takes 8 points of fire damage, gives the target Burn for 2 turns(40 charges)', 3),
(46, 'Staff of Magnus', 8, 2011, 'Abosrb 50 points of magicka from the target, if the target has no magicka left the target takes 50 points of damage(40 charges)', 3),
(47, 'Aetherial Staff', 8, 1970, 'Summons a Dwarven Spider or Dwarven Sphere to fight for you for 2 turns', 2),
(48, 'Sanguine Rose', 10, 2087, 'Summons a Dremora of the same level as you to fight alongside your party for 2 turns(50 charges)', 2),
(49, 'Wabbajak', 10, 1211, 'Deals 27 Damage to Target; A blast from this staff has unpredictable effects(50 charges)', 3),
(50, 'Skull of Corruption', 10, 1680, 'Deals 20(up to 50) points of damage, amount of damage goes up by 10 for every dream collected from sleeping people(max 3 people)(50 charges)', 3);

-- --------------------------------------------------------

--
-- Table structure for table `unique_armors`
--

CREATE TABLE `unique_armors` (
  `UArmorID` int(11) NOT NULL,
  `UArmorName` varchar(255) NOT NULL,
  `UArmorDefense` int(11) NOT NULL,
  `UArmorWeight` int(11) NOT NULL,
  `UArmorValue` int(11) NOT NULL,
  `UArmorDesc` varchar(255) NOT NULL,
  `ArmorTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unique_armors`
--

INSERT INTO `unique_armors` (`UArmorID`, `UArmorName`, `UArmorDefense`, `UArmorWeight`, `UArmorValue`, `UArmorDesc`, `ArmorTypeID`) VALUES
(1, 'Saviors Hide', 9, 6, 5012, 'This gear gives an additional 5 points of magic resist and 10 points of poison resist', 1),
(2, 'Nightingale', 14, 12, 1553, 'This gear gives 30 additional points of stamina and 10 points of frost resist', 1),
(3, 'Deathbrand', 17, 7, 2433, 'This gear gives 50 additional points of stamina', 1),
(4, 'Ebony Mail', 27, 28, 5000, '1 additional sneak dice, 5 points of poison damage to any opponent nearby a turn', 2);

-- --------------------------------------------------------

--
-- Table structure for table `unique_clothes`
--

CREATE TABLE `unique_clothes` (
  `UClothesID` int(11) NOT NULL,
  `UClothesName` varchar(255) NOT NULL,
  `UClothesWeight` int(11) NOT NULL,
  `UClothesValue` int(11) NOT NULL,
  `UClothesDesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unique_clothes`
--

INSERT INTO `unique_clothes` (`UClothesID`, `UClothesName`, `UClothesWeight`, `UClothesValue`, `UClothesDesc`) VALUES
(1, 'Blue/Black Mage Robes', 1, 10, 'Regenerate an additional 5 points of magicka back every turn'),
(2, 'Novice Robes', 1, 250, 'Regenerate an additional 5 points of magicka back every turn'),
(3, 'Apprentice Robes', 1, 400, 'Regenerate an additional 7 points of magicka back every turn'),
(4, 'Cultist Robes', 1, 100, 'Regenerate an additional 7 points of magicka back every turn'),
(5, 'Hooded Black Mage Robes', 1, 40, 'Regenerate an additional 7 points of magicka back every turn'),
(6, 'Necromancer Robes', 1, 40, 'Regenerate an additional 7 points of magicka back every turn'),
(7, 'Adept Robes', 1, 600, 'Regenerate an additional 10 points of magicka back every turn'),
(8, 'Expert Robes', 1, 800, 'Regenerate an additional 12 points of magicka back every turn'),
(9, 'Master Robes', 1, 1500, 'Regenerate an additional 15 points of magicka back every turn'),
(10, 'Apprentice Robes', 1, 400, 'Regenerate an additional 7 points of magicka back every turn'),
(11, 'Robes of Alteration', 1, 100, 'Alteration spells cost 12% less magicka, regen 5 additional points of magicka per turn'),
(12, 'Robes of Conjuration', 1, 100, 'Conjuration spells cost 12% less magicka, regen 5 additional points of magicka per turn'),
(13, 'Robes of Destruction', 1, 100, 'Destruction spells cost 12% less magicka, regen 5 additional points of magicka per turn'),
(14, 'Robes of Illusion', 1, 100, 'Illusion spells cost 12% less magicka, regen 5 additional points of magicka per turn'),
(15, 'Robes of Resturation', 1, 100, 'Resturation spells cost 12% less magicka, regen 5 additional points of magicka per turn'),
(16, 'Archmage Robes', 1, 3265, 'All spells cost 15% less magicka, +50 magicka, regen 10 additional points of magicka per turn'),
(17, 'Jester Clothes', 1, 450, 'One handed attacks deal 10 more points of damage, x2 additional sneak attack, +3 sneak dice'),
(18, 'Shrouded Robes', 1, 250, 'Destruction Spells cost 15% less magicka'),
(19, 'Thalmor Robes', 1, 100, 'Destruction Spells cost 12% less magicka');

-- --------------------------------------------------------

--
-- Table structure for table `unique_shields`
--

CREATE TABLE `unique_shields` (
  `UShieldID` int(11) NOT NULL,
  `UShieldName` varchar(255) NOT NULL,
  `UShieldDefense` int(11) NOT NULL,
  `UShieldWeight` int(11) NOT NULL,
  `UShieldValue` int(11) NOT NULL,
  `UShieldDesc` varchar(255) NOT NULL,
  `ArmorTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unique_shields`
--

INSERT INTO `unique_shields` (`UShieldID`, `UShieldName`, `UShieldDefense`, `UShieldWeight`, `UShieldValue`, `UShieldDesc`, `ArmorTypeID`) VALUES
(1, 'Aetherial Shield', 14, 12, 2000, 'Bashing a target makes them become ethereal for 1 turn, giving them the ability to not attack of be attacked', 2),
(2, 'Auriels Shield', 17, 14, 755, 'Stores energy of up to 5 blocked attacks, then dealing 5/7/9/11/13 additional bashing damage', 2),
(3, 'Dawnguard Rune Shield', 14, 6, 450, '10 additional bashing damage to vampires, blocking creates a sun shield damaging anyone striking it for 10 points of damage while also doing 5 points of stamina damage to the wielder', 1),
(4, 'Shield of Ysgramor', 16, 12, 1715, 'Increases magic resist by 20%, wielder gains 20 additional points of health', 2),
(5, 'Spellbreaker', 19, 12, 227, 'Blocking creates a powerful ward that will negate up to 50 points of damage from any spells', 2),
(6, 'Targe of the Blooded', 5, 10, 946, 'Deals an additional 5 points of bashing damage, while also doing 3 points of bleed damage for 3 turns', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unique_weapons`
--

CREATE TABLE `unique_weapons` (
  `UWeaponID` int(11) NOT NULL,
  `UWeaponName` varchar(255) NOT NULL,
  `UWeaponDamage` int(11) NOT NULL,
  `UWeaponWeight` int(11) NOT NULL,
  `UWeaponValue` int(11) NOT NULL,
  `UWeaponDesc` varchar(255) NOT NULL,
  `WeaponTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unique_weapons`
--

INSERT INTO `unique_weapons` (`UWeaponID`, `UWeaponName`, `UWeaponDamage`, `UWeaponWeight`, `UWeaponValue`, `UWeaponDesc`, `WeaponTypeID`) VALUES
(1, 'Blade of Woe', 12, 7, 880, 'Absorb 10 points of health(40 charges)', 4),
(2, 'Blade of Sacrifice', 10, 4, 144, 'None', 4),
(3, 'Bloodthorn', 8, 3, 183, 'If target you attacked died in the next 2 rounds of battle, fill a soul gem(30 charges)', 4),
(4, 'Dragon Priest Dagger', 6, 5, 9, 'None', 4),
(5, 'Keening', 8, 4, 5, 'Abosorb 10 points of either health, mana,or stamina(depending on lowest current value)(30 charges)', 4),
(6, 'Nettlebane', 6, 10, 5, 'Does 10 additional points of damage to Sprigians', 4),
(7, 'Shiv', 5, 2, 5, 'None', 4),
(8, 'Mehrunes Razor', 11, 3, 860, 'Roll a d100 and if the result is 1 or 100, instantly kill the target(Can only preform the roll once you attack the target)', 4),
(9, 'Horksbane', 10, 14, 250, 'Does 10 additional points of damage to horkers', 6),
(10, 'Mace of Molag Bal', 16, 18, 1257, 'Deals 25 points of damage to stamina and magicka, if the target you attack dies in the next 2 rounds of battle, fill a soul gem(40 charges)', 6),
(11, 'Ancient Nord Sword', 8, 12, 13, 'None', 7),
(12, 'Blades Sword', 11, 10, 300, 'None', 7),
(13, 'Bloodscythe', 13, 10, 1859, 'With Soulrender also equipped, absorb 10 points of helth(40 charges) ', 7),
(14, 'Chillrend', 13, 14, 846, 'Target takes 30 points of frost damage to health and stamina, roll 1d6 for chance to paralyze target for 1 turn(40 charges)', 7),
(15, 'Dragonbane', 12, 12, 1189, 'If a dragon is the target, deal 30 damage, else do 10 shock damage to health and magicka(40 charges)', 7),
(16, 'Drainheart Sword', 11, 3, 66, 'Absorb 15 points of stamina(40 charges)', 7),
(17, 'Eduj', 11, 9, 330, 'Target takes 10 points of frost damage to health and stamina(40 charges)', 7),
(18, 'Falmer Sword', 10, 18, 67, 'None', 7),
(19, 'Forsworn Sword', 10, 13, 70, 'None', 7),
(20, 'Gauldur Blackblade', 11, 15, 669, 'Absorb 25 points of health(30 charges)', 7),
(21, 'Ghostblade', 8, 1, 300, 'Does 3 additional damage', 7),
(22, 'Grimsever', 12, 14, 350, 'Target takes 15 points of frost damage to health and stamina(40 charges)', 7),
(23, 'Imperial Sword', 8, 10, 23, 'None', 7),
(24, 'Nighttingale Blade', 12, 13, 1424, 'Absorb 25 points of health and stamina(40 charges)', 7),
(25, 'Nord Hero Sword', 11, 9, 135, 'None', 7),
(26, 'Red Eagles Bane', 11, 15, 345, 'Low ranking undead(normal dragur/skeletons) take 10 points of fire damage and flee for 2 turns, coming back after(30 charges)', 7),
(27, 'Red Eagles Fury', 8, 12, 97, 'Target takes 5 points of fire damage to health, gives Burn to the target for 2 turns(40 charges)', 7),
(28, 'Scimitar', 11, 10, 5, 'None', 7),
(29, 'Silver Sword', 8, 7, 100, 'Does 5 additional damage against undead', 7),
(30, 'The Pale Blade', 11, 15, 452, 'Target takes 25 points of frost damage to health and stamina, Low ranking creatures and people(Wolves,Bandits) flee for 2 turns, coming back after(30 charges)', 7),
(31, 'Windshear', 11, 10, 40, 'Bash attacks stun enemies for 1 turn(Can only be used once per turn and takes up turn)', 7),
(32, 'Wooden Sword', 2, 3, 25, 'N/A(Fell free to use this weapon, though it might be the death of you)', 7),
(33, 'Dawnbreaker', 12, 10, 740, 'Deals 10 points of fire damage to the target, if the target is undead and dies that turn all nearby undead take 20 points of damage and flee for two turns(40 charges)', 7),
(34, 'Ancient Nord War Axe', 9, 14, 15, 'None', 8),
(35, 'Dawnguard Rune Axe', 11, 13, 175, 'Does 10 sun damage to undead(and undead only)', 8),
(36, 'Dawnguard War Axe', 11, 13, 55, 'Does 5 additional damage to vampires(and vampires only)', 8),
(37, 'Falmer War Axe', 11, 21, 82, 'None', 8),
(38, 'Forsworn War Axe', 11, 15, 90, 'None', 8),
(39, 'Nord Hero War Axe', 12, 11, 165, 'None', 8),
(40, 'Okin', 12, 11, 150, 'Target takes 10 points of frost damage to health and stamina(40 charges)', 8),
(41, 'Hoarfrost', 5, 10, 946, 'Target takes 15 points of frost damage to health and stamina, roll 1d6 for a chance to immobilize target for 1 turn(40 charges)(Can mine ore,obviously not a combat ability)', 10),
(42, 'Notched Pickaxe', 5, 10, 150, 'Target takes 5 points of shock damage to health and magicka(40 charges)(Can mine ore,obviously not a combat ability)', 10),
(43, 'Poachers Axe', 5, 10, 32, 'Does 3 points of extra damage to animals(and only animals)(Can chop wood,obviously not a combat ability)', 10),
(44, 'Ancient Nord Battle Axe', 18, 22, 28, 'None', 1),
(45, 'Drainblood Battleaxe', 21, 5, 266, 'Absorb 15 points of health(40 charges)', 1),
(46, 'Headmans Axe', 17, 11, 15, 'None', 1),
(47, 'Nord Hero Battle Axe', 21, 20, 300, 'None', 1),
(48, 'Wuuthrad', 25, 25, 2000, 'Does 10 additional damage against elves', 1),
(49, 'Rueful Axe', 22, 10, 1183, 'Deals 20 points of damage to stamina(40 charges)', 1),
(50, 'Ancient Nord Greatsword', 17, 18, 35, 'None', 5),
(51, 'Bloodskal Blade', 21, 16, 1250, 'Upon a successful power attack, release an energy blast to do an additional 30 damage to anyone in front the wielder(40 charges)', 5),
(52, 'Nord Hero Greatsword', 20, 16, 250, 'None', 5),
(53, 'Silver Greatsword', 17, 12, 160, 'Does 10 additional damage against undead', 5),
(54, 'Stormfang', 17, 17, 1175, 'Target takes 30 points of shock damage to health and magicka(30 charges)', 5),
(55, 'Ebony Blade', 11, 10, 2000, 'Absorb 10(up to 40)points of health, add 6 points of absorbtion damage for every friend(or party member) you have slain(max 5 stacks)', 5),
(56, 'Aegisbane', 18, 24, 180, 'Target takes 5 points of frost damage to health and stamina(40 charges)', 9),
(57, 'Champions Cudgel', 24, 27, 1767, 'Roll 1d6 for the chance to deal 75 total damage in addtion to your hit from the weapon(40 charges)', 9),
(58, 'Dawnguard Warhammer', 22, 26, 110, 'Does 10 additional damage to vampires', 9),
(59, 'Dawnguard Rune Hammer', 22, 26, 500, 'Bashing a surface creates a rune on that surface, that rune does 50 points of fire damage on contact', 9),
(60, 'The Longhammer', 21, 18, 90, 'This reduced weight of this hammer allows for two attacks per turn', 9),
(61, 'Trollsbane', 20, 25, 60, 'Does 15 points of fire damage to trolls health(and trolls only)', 9),
(62, 'Volendrung', 25, 26, 1843, 'Absorb 50 of stamina(40 charges)', 9),
(63, 'Ancient Nord Bow', 8, 12, 45, 'None', 2),
(64, 'Auriels Bow', 13, 11, 1000, 'Target takes 20 points of sun damage, or 60 points to undead(40 charges)', 2),
(65, 'Bow of the Hunt', 10, 7, 434, 'Does 20 points of extra damage to animals(and animals only)', 2),
(66, 'Drainspell Bow', 14, 6, 458, 'Absorb 15 points of magicka(40 charges)', 2),
(67, 'Falmer Bow', 12, 15, 135, 'None', 2),
(68, 'Forsworn Bow', 12, 11, 145, 'None', 2),
(69, 'Gauldur Blackbow', 14, 18, 530, 'Absorb 30 points of magicka(30 charges)', 2),
(70, 'Nord Hero Bow', 11, 7, 200, 'None', 2),
(71, 'Nightingale Bow', 15, 13, 1409, 'Target takes 20 points of frost damage to health and stamina, and 10 points of shock damage to health and magicka(40 charges)', 2),
(72, 'Zephyr', 12, 10, 670, 'This rigged bow allows for two attacks per turn', 2),
(73, 'Enhanced Crossbow', 19, 15, 200, 'Attacks ignore 50% armor', 3),
(74, 'Enhanced Dwarven Crossbow', 22, 21, 550, 'Attacks ignore 50% armor', 3),
(75, 'Enhanced Nordic Crossbow', 23, 22, 1400, 'Attacks ignore 50% armor', 3);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `WeaponID` int(11) NOT NULL,
  `WeaponName` varchar(255) NOT NULL,
  `WeaponDamage` int(11) NOT NULL,
  `WeaponWeight` int(11) NOT NULL,
  `WeaponValue` int(11) NOT NULL,
  `WeaponTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`WeaponID`, `WeaponName`, `WeaponDamage`, `WeaponWeight`, `WeaponValue`, `WeaponTypeID`) VALUES
(1, 'Iron Battleaxe', 16, 20, 55, 1),
(2, 'Steel Battleaxe', 18, 21, 100, 1),
(3, 'Elven Battleaxe', 21, 24, 520, 1),
(4, 'Dwarven Battleaxe', 20, 23, 300, 1),
(5, 'Orcish Battleaxe', 19, 25, 165, 1),
(6, 'Glass Battleaxe', 22, 25, 900, 1),
(7, 'Nordic Battleaxe', 21, 23, 650, 1),
(8, 'Ebony Battleaxe', 23, 26, 1585, 1),
(9, 'Daedric Battleaxe', 25, 27, 2750, 1),
(10, 'Dragonbone Battleaxe', 26, 30, 3000, 1),
(11, 'Skyforge Steel Battleaxe', 21, 21, 150, 1),
(12, 'Stalhrim Battleaxe', 24, 25, 2150, 1),
(13, 'Long Bow', 6, 5, 30, 2),
(14, 'Hunting Bow', 7, 7, 50, 2),
(15, 'Imperial Bow', 9, 8, 90, 2),
(16, 'Elven Bow', 13, 12, 470, 2),
(17, 'Dwarven Bow', 12, 10, 270, 2),
(18, 'Orcish Bow', 10, 9, 150, 2),
(19, 'Glass Bow', 15, 14, 820, 2),
(20, 'Nordic Bow', 13, 11, 580, 2),
(21, 'Ebony Bow', 17, 16, 1440, 2),
(22, 'Daedric Bow', 19, 18, 2500, 2),
(23, 'Dragonbone Bow', 20, 20, 2725, 2),
(24, 'Stalhrim Bow', 17, 15, 1800, 2),
(25, 'Crossbow', 19, 14, 120, 3),
(26, 'Imperial Crossbow', 20, 15, 150, 3),
(27, 'Dwarven Crossbow', 22, 20, 350, 3),
(28, 'Orcish Crossbow', 21, 16, 325, 3),
(29, 'Nordic Crossbow', 23, 21, 1250, 3),
(30, 'Ebony Crossbow', 25, 23, 2500, 3),
(31, 'Daedric Crossbow', 27, 25, 2700, 3),
(32, 'Dragonbone Crossbow', 28, 27, 2950, 3),
(33, 'Iron Dagger', 4, 2, 10, 4),
(34, 'Steel Dagger', 5, 3, 18, 4),
(35, 'Elven Dagger', 8, 4, 95, 4),
(36, 'Dwarven Dagger', 7, 4, 55, 4),
(37, 'Orcish Dagger', 6, 3, 30, 4),
(38, 'Glass Dagger', 9, 5, 165, 4),
(39, 'Nordic Dagger', 8, 4, 115, 4),
(40, 'Ebony Dagger', 10, 5, 290, 4),
(41, 'Daedric Dagger', 11, 6, 500, 4),
(42, 'Dragonbone Dagger', 12, 7, 600, 4),
(43, 'Skyforge Steel Dagger', 8, 3, 25, 4),
(44, 'Stalhrim Dagger', 10, 5, 395, 4),
(45, 'Iron Greatsword', 15, 16, 50, 5),
(46, 'Steel Greatsword', 17, 17, 90, 5),
(47, 'Elven Greatsword', 20, 20, 470, 5),
(48, 'Dwarven Greatsword', 19, 19, 270, 5),
(49, 'Orcish Greatsword', 18, 18, 75, 5),
(50, 'Glass Greatsword', 21, 22, 820, 5),
(51, 'Nordic Greatsword', 20, 19, 585, 5),
(52, 'Ebony Greatsword', 22, 22, 1440, 5),
(53, 'Daedric Greatsword', 24, 23, 2500, 5),
(54, 'Dragonbone Greatsword', 25, 27, 2725, 5),
(55, 'Skyforge Steel Greatsword', 20, 17, 140, 5),
(56, 'Stalhrim Greatsword', 23, 21, 1970, 5),
(57, 'Iron Mace', 9, 13, 35, 6),
(58, 'Steel Mace', 10, 14, 65, 6),
(59, 'Elven Mace', 13, 17, 330, 6),
(60, 'Dwarven Mace', 12, 16, 190, 6),
(61, 'Orcish Mace', 11, 15, 105, 6),
(62, 'Glass Mace', 14, 18, 575, 6),
(63, 'Nordic Mace', 13, 16, 410, 6),
(64, 'Ebony Mace', 16, 19, 1000, 6),
(65, 'Daedric Mace', 17, 20, 1750, 6),
(66, 'Dragonbone Mace', 18, 22, 2000, 6),
(67, 'Skyforge Steel Mace', 14, 14, 100, 6),
(68, 'Stalhrim Mace', 16, 18, 1375, 6),
(69, 'Iron Sword', 7, 9, 25, 7),
(70, 'Steel Sword', 8, 10, 45, 7),
(71, 'Elven Sword', 11, 13, 235, 7),
(72, 'Dwarven Sword', 10, 12, 135, 7),
(73, 'Orcish Sword', 9, 11, 75, 7),
(74, 'Glass Sword', 12, 14, 410, 7),
(75, 'Nordic Sword', 11, 12, 290, 7),
(76, 'Ebony Sword', 13, 15, 720, 7),
(77, 'Daedric Sword', 14, 16, 1250, 7),
(78, 'Dragonbone Sword', 15, 19, 1500, 7),
(79, 'Skyforge Steel Sword', 11, 10, 70, 7),
(80, 'Stalhrim Sword', 13, 14, 985, 7),
(81, 'Iron War Axe', 8, 11, 30, 8),
(82, 'Steel War Axe', 9, 12, 55, 8),
(83, 'Elven War Axe', 12, 15, 280, 8),
(84, 'Dwarven War Axe', 11, 14, 165, 8),
(85, 'Orcish War Axe', 10, 13, 90, 8),
(86, 'Glass War Axe', 14, 16, 490, 8),
(87, 'Nordic War Axe', 12, 14, 350, 8),
(88, 'Ebony War Axe', 15, 17, 865, 8),
(89, 'Daedric War Axe', 16, 18, 1500, 8),
(90, 'Dragonbone War Axe', 17, 21, 1700, 8),
(91, 'Skyforge Steel War Axe', 12, 12, 80, 8),
(92, 'Stalhrim War Axe', 15, 16, 1180, 8),
(93, 'Iron Warhammer', 18, 24, 90, 9),
(94, 'Steel Warhammer', 20, 25, 110, 9),
(95, 'Elven Warhammer', 23, 28, 565, 9),
(96, 'Dwarven Warhammer', 22, 27, 325, 9),
(97, 'Orcish Warhammer', 21, 25, 180, 9),
(98, 'Glass Warhammer', 24, 29, 985, 9),
(99, 'Nordic Warhammer', 23, 27, 700, 9),
(100, 'Ebony Warhammer', 25, 30, 1725, 9),
(101, 'Daedric Warhammer', 27, 30, 4000, 9),
(102, 'Dragonbone Warhammer', 28, 33, 4275, 9),
(103, 'Skyforge Steel Warhammer', 23, 25, 175, 9),
(104, 'Pickaxe', 5, 10, 5, 10),
(105, 'Woodcutters Axe', 5, 10, 5, 10),
(106, 'Fork', 1, 1, 5, 10),
(107, 'Knife', 2, 1, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `weapon_types`
--

CREATE TABLE `weapon_types` (
  `WeaponTypeID` int(11) NOT NULL,
  `WeaponTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weapon_types`
--

INSERT INTO `weapon_types` (`WeaponTypeID`, `WeaponTypeName`) VALUES
(1, 'Battle Axes'),
(2, 'Bows'),
(3, 'Crossbows'),
(4, 'Daggers'),
(5, 'Greatswords'),
(6, 'Maces'),
(7, 'Swords'),
(8, 'War Axes'),
(9, 'Warhammers'),
(10, 'Other');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`AbilityID`),
  ADD KEY `AbilityTypeID` (`AbilityTypeID`);

--
-- Indexes for table `ability_types`
--
ALTER TABLE `ability_types`
  ADD PRIMARY KEY (`AbilityTypeID`);

--
-- Indexes for table `alchemy`
--
ALTER TABLE `alchemy`
  ADD PRIMARY KEY (`AID`),
  ADD KEY `ATypeID` (`ATypeID`);

--
-- Indexes for table `alchemy_types`
--
ALTER TABLE `alchemy_types`
  ADD PRIMARY KEY (`ATypeID`);

--
-- Indexes for table `armors`
--
ALTER TABLE `armors`
  ADD PRIMARY KEY (`ArmorID`),
  ADD KEY `ArmorTypeID` (`ArmorTypeID`);

--
-- Indexes for table `armor_types`
--
ALTER TABLE `armor_types`
  ADD PRIMARY KEY (`ArmorTypeID`);

--
-- Indexes for table `bound_weapons`
--
ALTER TABLE `bound_weapons`
  ADD PRIMARY KEY (`BWeaponID`),
  ADD KEY `WeaponTypeID` (`WeaponTypeID`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`ClothesID`);

--
-- Indexes for table `cooking_recipes`
--
ALTER TABLE `cooking_recipes`
  ADD PRIMARY KEY (`CRecipeID`);

--
-- Indexes for table `debuffs`
--
ALTER TABLE `debuffs`
  ADD PRIMARY KEY (`DebuffID`),
  ADD KEY `DebuffTypeID` (`DebuffTypeID`);

--
-- Indexes for table `debuff_types`
--
ALTER TABLE `debuff_types`
  ADD PRIMARY KEY (`DebuffTypeID`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`EmailID`);

--
-- Indexes for table `enchants`
--
ALTER TABLE `enchants`
  ADD PRIMARY KEY (`EnchantID`),
  ADD KEY `EnchantTypeID` (`EnchantTypeID`);

--
-- Indexes for table `enchant_types`
--
ALTER TABLE `enchant_types`
  ADD PRIMARY KEY (`EnchantTypeID`);

--
-- Indexes for table `fd_types`
--
ALTER TABLE `fd_types`
  ADD PRIMARY KEY (`FDTYPEID`);

--
-- Indexes for table `food_and_drink`
--
ALTER TABLE `food_and_drink`
  ADD PRIMARY KEY (`FDID`),
  ADD KEY `FDTYPEID` (`FDTYPEID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `perks`
--
ALTER TABLE `perks`
  ADD PRIMARY KEY (`PerkID`),
  ADD KEY `PerkTypeID` (`PerkTypeID`);

--
-- Indexes for table `perk_types`
--
ALTER TABLE `perk_types`
  ADD PRIMARY KEY (`PerkTypeID`);

--
-- Indexes for table `potions_and_poisons`
--
ALTER TABLE `potions_and_poisons`
  ADD PRIMARY KEY (`PPID`),
  ADD KEY `ATypeID` (`ATypeID`);

--
-- Indexes for table `powers`
--
ALTER TABLE `powers`
  ADD PRIMARY KEY (`PowerID`),
  ADD KEY `PowerTypeID` (`PowerTypeID`);

--
-- Indexes for table `power_types`
--
ALTER TABLE `power_types`
  ADD PRIMARY KEY (`PowerTypeID`);

--
-- Indexes for table `races`
--
ALTER TABLE `races`
  ADD PRIMARY KEY (`RaceID`);

--
-- Indexes for table `recipe_types`
--
ALTER TABLE `recipe_types`
  ADD PRIMARY KEY (`RecipeTypeID`);

--
-- Indexes for table `shields`
--
ALTER TABLE `shields`
  ADD PRIMARY KEY (`ShieldID`),
  ADD KEY `ArmorTypeID` (`ArmorTypeID`);

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`ShoutID`);

--
-- Indexes for table `smithing_recipes`
--
ALTER TABLE `smithing_recipes`
  ADD PRIMARY KEY (`SRecipeID`),
  ADD KEY `SmithingTypeID` (`SmithingTypeID`),
  ADD KEY `RecipeTypeID` (`RecipeTypeID`);

--
-- Indexes for table `smithing_types`
--
ALTER TABLE `smithing_types`
  ADD PRIMARY KEY (`SmithingTypeID`);

--
-- Indexes for table `smithing_upgrades`
--
ALTER TABLE `smithing_upgrades`
  ADD PRIMARY KEY (`SmithUpgradeID`);

--
-- Indexes for table `soul_gems`
--
ALTER TABLE `soul_gems`
  ADD PRIMARY KEY (`SGID`);

--
-- Indexes for table `spells`
--
ALTER TABLE `spells`
  ADD PRIMARY KEY (`SpellID`),
  ADD KEY `SpellTypeID` (`SpellTypeID`),
  ADD KEY `SpellDiffID` (`SpellDiffID`);

--
-- Indexes for table `spell_difficulties`
--
ALTER TABLE `spell_difficulties`
  ADD PRIMARY KEY (`SpellDiffID`);

--
-- Indexes for table `spell_types`
--
ALTER TABLE `spell_types`
  ADD PRIMARY KEY (`SpellTypeID`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `SpellTypeID` (`SpellTypeID`);

--
-- Indexes for table `unique_armors`
--
ALTER TABLE `unique_armors`
  ADD PRIMARY KEY (`UArmorID`),
  ADD KEY `ArmorTypeID` (`ArmorTypeID`);

--
-- Indexes for table `unique_clothes`
--
ALTER TABLE `unique_clothes`
  ADD PRIMARY KEY (`UClothesID`);

--
-- Indexes for table `unique_shields`
--
ALTER TABLE `unique_shields`
  ADD PRIMARY KEY (`UShieldID`),
  ADD KEY `ArmorTypeID` (`ArmorTypeID`);

--
-- Indexes for table `unique_weapons`
--
ALTER TABLE `unique_weapons`
  ADD PRIMARY KEY (`UWeaponID`),
  ADD KEY `WeaponTypeID` (`WeaponTypeID`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`WeaponID`),
  ADD KEY `WeaponTypeID` (`WeaponTypeID`);

--
-- Indexes for table `weapon_types`
--
ALTER TABLE `weapon_types`
  ADD PRIMARY KEY (`WeaponTypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `AbilityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `ability_types`
--
ALTER TABLE `ability_types`
  MODIFY `AbilityTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `alchemy`
--
ALTER TABLE `alchemy`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `alchemy_types`
--
ALTER TABLE `alchemy_types`
  MODIFY `ATypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `armors`
--
ALTER TABLE `armors`
  MODIFY `ArmorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `armor_types`
--
ALTER TABLE `armor_types`
  MODIFY `ArmorTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bound_weapons`
--
ALTER TABLE `bound_weapons`
  MODIFY `BWeaponID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `ClothesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cooking_recipes`
--
ALTER TABLE `cooking_recipes`
  MODIFY `CRecipeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `debuffs`
--
ALTER TABLE `debuffs`
  MODIFY `DebuffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `debuff_types`
--
ALTER TABLE `debuff_types`
  MODIFY `DebuffTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `EmailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enchants`
--
ALTER TABLE `enchants`
  MODIFY `EnchantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `enchant_types`
--
ALTER TABLE `enchant_types`
  MODIFY `EnchantTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fd_types`
--
ALTER TABLE `fd_types`
  MODIFY `FDTYPEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food_and_drink`
--
ALTER TABLE `food_and_drink`
  MODIFY `FDID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=940;

--
-- AUTO_INCREMENT for table `perks`
--
ALTER TABLE `perks`
  MODIFY `PerkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `perk_types`
--
ALTER TABLE `perk_types`
  MODIFY `PerkTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `potions_and_poisons`
--
ALTER TABLE `potions_and_poisons`
  MODIFY `PPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `powers`
--
ALTER TABLE `powers`
  MODIFY `PowerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `power_types`
--
ALTER TABLE `power_types`
  MODIFY `PowerTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `races`
--
ALTER TABLE `races`
  MODIFY `RaceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recipe_types`
--
ALTER TABLE `recipe_types`
  MODIFY `RecipeTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shields`
--
ALTER TABLE `shields`
  MODIFY `ShieldID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
  MODIFY `ShoutID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `smithing_recipes`
--
ALTER TABLE `smithing_recipes`
  MODIFY `SRecipeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `smithing_types`
--
ALTER TABLE `smithing_types`
  MODIFY `SmithingTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `smithing_upgrades`
--
ALTER TABLE `smithing_upgrades`
  MODIFY `SmithUpgradeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `soul_gems`
--
ALTER TABLE `soul_gems`
  MODIFY `SGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `spells`
--
ALTER TABLE `spells`
  MODIFY `SpellID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `spell_difficulties`
--
ALTER TABLE `spell_difficulties`
  MODIFY `SpellDiffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `spell_types`
--
ALTER TABLE `spell_types`
  MODIFY `SpellTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `StaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `unique_armors`
--
ALTER TABLE `unique_armors`
  MODIFY `UArmorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unique_clothes`
--
ALTER TABLE `unique_clothes`
  MODIFY `UClothesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `unique_shields`
--
ALTER TABLE `unique_shields`
  MODIFY `UShieldID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unique_weapons`
--
ALTER TABLE `unique_weapons`
  MODIFY `UWeaponID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `WeaponID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `weapon_types`
--
ALTER TABLE `weapon_types`
  MODIFY `WeaponTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abilities`
--
ALTER TABLE `abilities`
  ADD CONSTRAINT `abilities_ibfk_1` FOREIGN KEY (`AbilityTypeID`) REFERENCES `ability_types` (`AbilityTypeID`);

--
-- Constraints for table `alchemy`
--
ALTER TABLE `alchemy`
  ADD CONSTRAINT `alchemy_ibfk_1` FOREIGN KEY (`ATypeID`) REFERENCES `alchemy_types` (`ATypeID`);

--
-- Constraints for table `armors`
--
ALTER TABLE `armors`
  ADD CONSTRAINT `armors_ibfk_1` FOREIGN KEY (`ArmorTypeID`) REFERENCES `armor_types` (`ArmorTypeID`);

--
-- Constraints for table `bound_weapons`
--
ALTER TABLE `bound_weapons`
  ADD CONSTRAINT `bound_weapons_ibfk_1` FOREIGN KEY (`WeaponTypeID`) REFERENCES `weapon_types` (`WeaponTypeID`);

--
-- Constraints for table `debuffs`
--
ALTER TABLE `debuffs`
  ADD CONSTRAINT `debuffs_ibfk_1` FOREIGN KEY (`DebuffTypeID`) REFERENCES `debuff_types` (`DebuffTypeID`);

--
-- Constraints for table `enchants`
--
ALTER TABLE `enchants`
  ADD CONSTRAINT `enchants_ibfk_1` FOREIGN KEY (`EnchantTypeID`) REFERENCES `enchant_types` (`EnchantTypeID`);

--
-- Constraints for table `food_and_drink`
--
ALTER TABLE `food_and_drink`
  ADD CONSTRAINT `food_and_drink_ibfk_1` FOREIGN KEY (`FDTYPEID`) REFERENCES `fd_types` (`FDTYPEID`);

--
-- Constraints for table `perks`
--
ALTER TABLE `perks`
  ADD CONSTRAINT `perks_ibfk_1` FOREIGN KEY (`PerkTypeID`) REFERENCES `perk_types` (`PerkTypeID`);

--
-- Constraints for table `potions_and_poisons`
--
ALTER TABLE `potions_and_poisons`
  ADD CONSTRAINT `potions_and_poisons_ibfk_1` FOREIGN KEY (`ATypeID`) REFERENCES `alchemy_types` (`ATypeID`);

--
-- Constraints for table `powers`
--
ALTER TABLE `powers`
  ADD CONSTRAINT `powers_ibfk_1` FOREIGN KEY (`PowerTypeID`) REFERENCES `power_types` (`PowerTypeID`);

--
-- Constraints for table `shields`
--
ALTER TABLE `shields`
  ADD CONSTRAINT `shields_ibfk_1` FOREIGN KEY (`ArmorTypeID`) REFERENCES `armor_types` (`ArmorTypeID`);

--
-- Constraints for table `smithing_recipes`
--
ALTER TABLE `smithing_recipes`
  ADD CONSTRAINT `smithing_recipes_ibfk_1` FOREIGN KEY (`SmithingTypeID`) REFERENCES `smithing_types` (`SmithingTypeID`),
  ADD CONSTRAINT `smithing_recipes_ibfk_2` FOREIGN KEY (`RecipeTypeID`) REFERENCES `recipe_types` (`RecipeTypeID`);

--
-- Constraints for table `spells`
--
ALTER TABLE `spells`
  ADD CONSTRAINT `spells_ibfk_1` FOREIGN KEY (`SpellTypeID`) REFERENCES `spell_types` (`SpellTypeID`),
  ADD CONSTRAINT `spells_ibfk_2` FOREIGN KEY (`SpellDiffID`) REFERENCES `spell_difficulties` (`SpellDiffID`);

--
-- Constraints for table `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `staffs_ibfk_1` FOREIGN KEY (`SpellTypeID`) REFERENCES `spell_types` (`SpellTypeID`);

--
-- Constraints for table `unique_armors`
--
ALTER TABLE `unique_armors`
  ADD CONSTRAINT `unique_armors_ibfk_1` FOREIGN KEY (`ArmorTypeID`) REFERENCES `armor_types` (`ArmorTypeID`);

--
-- Constraints for table `unique_shields`
--
ALTER TABLE `unique_shields`
  ADD CONSTRAINT `unique_shields_ibfk_1` FOREIGN KEY (`ArmorTypeID`) REFERENCES `armor_types` (`ArmorTypeID`);

--
-- Constraints for table `unique_weapons`
--
ALTER TABLE `unique_weapons`
  ADD CONSTRAINT `unique_weapons_ibfk_1` FOREIGN KEY (`WeaponTypeID`) REFERENCES `weapon_types` (`WeaponTypeID`);

--
-- Constraints for table `weapons`
--
ALTER TABLE `weapons`
  ADD CONSTRAINT `weapons_ibfk_1` FOREIGN KEY (`WeaponTypeID`) REFERENCES `weapon_types` (`WeaponTypeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
